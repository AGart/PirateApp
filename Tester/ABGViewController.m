//
//  ABGViewController.m
//  Tester
//
//  Created by Albee Gartenberg on 10/22/13.
//  Copyright (c) 2013 Albee Gartenberg. All rights reserved.
//

#import "ABGViewController.h"
#import "ABGTiles.h"
#import "Factory.h"


@interface ABGViewController ()

@end

@implementation ABGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
{
    // Welcome AlertView ---------------------------------------------------------------------------
    UIAlertView *Welcome = [[UIAlertView alloc]
                          initWithTitle:@"Pirate Adventure"
                          message: @"Your mission is to adventure out to solve the mystery of your dark past..."
                          delegate:self                          cancelButtonTitle: @"Begin Adventure!"                          otherButtonTitles:nil];
    [Welcome show];
  //------------------------------------------------------------------------------------------------
    Factory *factory = [[Factory alloc] init];
    self.tiles = [factory tiles];
    self.character = [factory character];
    self.blackbeard = [factory blackbeard];
    self.currentPoint = CGPointMake(0, 0);
    
    [self updateTile];
    [self updateButtons];
    [self updateCharacterStatsForArmor:nil withWeapons:nil withHealthEffect:0 withDamageEffect:0];
}
}

//IB Actions
- (IBAction)actionButtonPressed:(UIButton *)sender
    {
        ABGTiles *tile = [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
        [self updateCharacterStatsForArmor:tile.armor withWeapons:tile.weapon withHealthEffect:tile.healthEffect withDamageEffect:tile.damageEffect];
        [self levelAlertView];
        
        if (tile.healthEffect == -15) {
            self.blackbeard.health == self.blackbeard.health - self.character.damage;
        }
        if (self.character.health <= 0)
        {
            UIAlertView *characterDeath = [[UIAlertView alloc] initWithTitle:@"Death" message:@"You have died!" delegate: nil cancelButtonTitle:@"Ok" otherButtonTitles: nil, nil];
            [characterDeath show];
        }
        else if(self.blackbeard.health <= 0){
            UIAlertView *victoryAlert = [[UIAlertView alloc] initWithTitle:@"Victory!" message:@"You have defeated the evil Blackbeard!" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
        }
        
    }
- (IBAction)northButtonPressed:(UIButton *)sender
    {
        self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y + 1);
        [self updateButtons];
        [self updateTile];
    }
- (IBAction)westButtonPressed:(UIButton *)sender
    {
        self.currentPoint = CGPointMake(self.currentPoint.x - 1, self.currentPoint.y);
        [self updateButtons];
        [self updateTile];
    }
- (IBAction)southButtonPressed:(UIButton *)sender
    {
        self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y - 1);
        [self updateButtons];
        [self updateTile];
    }
- (IBAction)eastButtonPressed:(UIButton *)sender;
    {
        self.currentPoint = CGPointMake(self.currentPoint.x + 1, self.currentPoint.y);
        [self updateButtons];
        [self updateTile];
    }

-(void)updateTile
{
    ABGTiles *tileModel = [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    self.levelStoryText.text = tileModel.levelStoryText;
    self.backgroundImageView.image = tileModel.levelimage;
    [self.actionButton setTitle: tileModel.actionButtonName forState: UIControlStateNormal];
    self.levelTitleName.text = tileModel.levelname;

    self.healthNumberLabel.text = [NSString stringWithFormat:@"%i", self.character.health];
    self.damageNumberLabel.text = [NSString stringWithFormat:@"%i", self.character.damage];
    self.armorItemLabel.text = self.character.armor.name;
    self.weaponItemLabel.text = self.character.weapon.name;
}

-(void)updateButtons
{
    self.westButton.hidden = [self tileExistsAtPoint: CGPointMake(self.currentPoint.x - 1, self.currentPoint.y)];
    self.eastButton.hidden = [self tileExistsAtPoint: CGPointMake(self.currentPoint.x + 1, self.currentPoint.y)];
    self.northButton.hidden = [self tileExistsAtPoint: CGPointMake(self.currentPoint.x, self.currentPoint.y + 1)];
    self.southButton.hidden = [self tileExistsAtPoint: CGPointMake(self.currentPoint.x, self.currentPoint.y - 1)];
}


-(BOOL)tileExistsAtPoint:(CGPoint)point
{
    if (point.y >= 0 && point.x >= 0 && point.x < [self.tiles count] && point.y < [[self.tiles objectAtIndex:point.x] count]) {
        return NO;
    }
    else {
        return YES;
    }
}

-(void)updateCharacterStatsForArmor: (ABGArmor *)armor withWeapons:(ABGWeapon *)weapon withHealthEffect:(int)healthEffect withDamageEffect:(int)damageEffect;
{
    if (armor != nil) {
        self.character.health = self.character.health - self.character.armor.rating + armor.rating;
        self.character.armor = armor;
    }
    else if (weapon != nil){
        self.character.damage = self.character.damage - self.character.weapon.damage + weapon.damage;
        self.character.weapon = weapon;
    }
    else if (healthEffect != 0){
        self.character.health = self.character.health + healthEffect;
    }
    else if (damageEffect != 0){
        self.character.damage = self.character.damage + damageEffect;
    }
    else {
        self.character.health = self.character.health + self.character.armor.rating;
        self.character.damage = self.character.damage + self.character.weapon.damage;
    }
}

-(void)levelAlertView
{
    ABGTiles *abgtiles = [[ABGTiles alloc] init];
    
    if (self.currentPoint == abgtiles.coordinatePoint) {
        <#statements#>
    }
    
    UIAlertView *levelAlertView = [[UIAlertView alloc]
                          initWithTitle: abgtiles.alertViewTitle
                          message: abgtiles.alertViewLevelText
                          delegate:self                          cancelButtonTitle: @"Ok"                          otherButtonTitles:nil];
    [levelAlertView show];
    
    [self updateCharacterStatsForArmor:nil withWeapons:nil withHealthEffect:0 withDamageEffect:0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
 
@end
    
