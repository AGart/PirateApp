//
//  ABGViewController.h
//  Tester
//
//  Created by Albee Gartenberg on 10/22/13.
//  Copyright (c) 2013 Albee Gartenberg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Character.h"
#import "Boss.h"

@interface ABGViewController : UIViewController


//iVariables
@property (strong, nonatomic) NSArray *tiles;
@property (nonatomic, readwrite) CGPoint currentPoint;
@property (strong, nonatomic) Character *character;
@property (strong, nonatomic) NSString *levelTitleMessage;
@property (strong, nonatomic) NSString *getAlert;
@property (strong, nonatomic) Boss *blackbeard;

//IB Outlets
@property (strong, nonatomic) IBOutlet UIButton *northButton;
@property (strong, nonatomic) IBOutlet UIButton *westButton;
@property (strong, nonatomic) IBOutlet UIButton *southButton;
@property (strong, nonatomic) IBOutlet UIButton *eastButton;
@property (strong, nonatomic) IBOutlet UIButton *actionButton;
@property (strong, nonatomic) IBOutlet UILabel *healthNumberLabel;
@property (strong, nonatomic) IBOutlet UILabel *armorNumberRating;
@property (strong, nonatomic) IBOutlet UILabel *damageNumberLabel;
@property (strong, nonatomic) IBOutlet UILabel *armorItemLabel;
@property (strong, nonatomic) IBOutlet UILabel *weaponItemLabel;
@property (strong, nonatomic) IBOutlet UILabel *healthLabel;
@property (strong, nonatomic) IBOutlet UILabel *armorTypeLabel;
@property (strong, nonatomic) IBOutlet UILabel *armorLabel;
@property (strong, nonatomic) IBOutlet UILabel *weaponTypeLabel;
@property (strong, nonatomic) IBOutlet UILabel *damageLabel;
@property (strong, nonatomic) IBOutlet UIImageView *backgroundImageView;
@property (strong, nonatomic) IBOutlet UILabel *levelStoryText;
@property (strong, nonatomic) IBOutlet UILabel *levelTitleName;


// IB Actions
- (IBAction)actionButtonPressed:(UIButton *)sender;
- (IBAction)northButtonPressed:(UIButton *)sender;
- (IBAction)westButtonPressed:(UIButton *)sender;
- (IBAction)southButtonPressed:(UIButton *)sender;
- (IBAction)eastButtonPressed:(UIButton *)sender;

// Methods
-(void)updateTile;
-(void)updateCharacterStatsForArmor: (ABGArmor *)armor withWeapons:(ABGWeapon *)weapon withHealthEffect:(int)healthEffect withDamageEffect:(int)damageEffect;
-(void)levelAlertView;


@end
