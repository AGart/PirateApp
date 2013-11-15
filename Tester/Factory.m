//
//  Factory.m
//  Tester
//
//  Created by Albee Gartenberg on 10/23/13.
//  Copyright (c) 2013 Albee Gartenberg. All rights reserved.
//

#import "Factory.h"
#import "ABGTiles.h"

@implementation Factory

// Tile Arrays
-(NSArray *)tiles
{
    // LEVEL TILES
    ABGTiles *desertLevel = [[ABGTiles alloc] init];
    desertLevel.levelname = @"Desert";
    desertLevel.levelimage = [UIImage imageNamed:@"Desert.jpg"];
    desertLevel.levelStoryText = @"You wake up in a daze, covered in sand. The last thing you remember you were steering your ship and crew into a terrible storm. You must get yourself together and adventure out to solve the mystery of this dark tragedy...";
    desertLevel.actionButtonName = @"Search For Supplies";
    ABGWeapon *bluntSword = [[ABGWeapon alloc] init];
    bluntSword.name = @"Blunt Sword";
    bluntSword.damage = 14;
    desertLevel.weapon = bluntSword;
    ABGArmor *leatherArmor = [[ABGArmor alloc] init];
    leatherArmor.name  =@"Leather";
    leatherArmor.rating = 20;
    desertLevel.armor = leatherArmor;
    desertLevel.healthEffect = -50;
    desertLevel.alertViewTitle = @"Supplies Found!";
    desertLevel.alertViewLevelText = @"You found some Leather Armor and a Blunted Sword";
    desertLevel.coordinatePoint = CGPointMake(0, 0);
    //  desertLevel.healthEffect = -80;
    //  Alertview - find basic sword (+10) and basic pirate armor(+20 armor);
    
    ABGTiles *forestLevel = [[ABGTiles alloc] init];
    forestLevel.levelname = @"Forest";
    forestLevel.levelimage = [UIImage imageNamed:@"Forest.jpg"];
    forestLevel.levelStoryText = @"You have found yourself wandering into a heavily dense forest. You become surrounded by plush, exotic plants. There are footprints on the ground leading up a steep, dusty, overgrown trail...There is also a growing light shinning faintly to the South...";
    forestLevel.actionButtonName = @"Search For Food";
    forestLevel.armorEffect = +8;
    forestLevel.damageEffect = +8;
    forestLevel.alertViewTitle = @"Found!";
    forestLevel.alertViewLevelText = @"You find special, strength mushrooms that give you a boost to your damage and armor!";
    forestLevel.coordinatePoint = CGPointMake(1, 0);
    //  Alertview -  find edible mushrooms that give armor +8 and Damage +8;
    
    ABGTiles *mountainSideLevel = [[ABGTiles alloc] init];
    mountainSideLevel.levelname = @"Mountain Side";
    mountainSideLevel.levelimage = [UIImage imageNamed:@"Cliff.JPG"];
    mountainSideLevel.levelStoryText = @"After hiking up the trail, you reach the top which turns out to be a 500ft drop to rocky waters! After checking the surroundings you spot another stone trail leading down along the side of the mounatain, you may want to see where it leads...";
    mountainSideLevel.actionButtonName  = @"Attack";
    mountainSideLevel.healthEffect = +10;
    mountainSideLevel.alertViewTitle = @"ATTACKED!";
    mountainSideLevel.alertViewLevelText = @"An EagleHawk flys down for an attack! The bird takes 25 Health!";
    mountainSideLevel.coordinatePoint = CGPointMake(2, 0);
    //  alertview - attacked by eagle
    //  Attacked by an eagle(health 40, damage 5, armor 0)
    
    ABGTiles *statueLevel = [[ABGTiles alloc] init];
    statueLevel.levelname = @"Statue";
    statueLevel.levelimage = [UIImage imageNamed:@"Statue.jpg"];
    statueLevel.levelStoryText = @"The faint glow of light becomes brighter as you go toward it. You finally reach the source and it quickly vanishes. The light reatreated into a necklace hanging from the statue's neck. There is an erie wind in the air, better be cautious with your decisions...";
    statueLevel.actionButtonName = @"Take the Necklace?";
    statueLevel.healthEffect = +30;
    statueLevel.alertViewTitle = @"Bonus!";
    statueLevel.alertViewLevelText = @"The God grants this necklace with the power of resilance! You gain a +30 bonus to your armor!";
    statueLevel.coordinatePoint = CGPointMake(1, 1);
    //  Adds int rating = +30 bonus to armor
    
    ABGTiles *oasisLevel = [[ABGTiles alloc] init];
    oasisLevel.levelname = @"Oasis";
    oasisLevel.levelimage = [UIImage imageNamed:@"Oasis.jpg"];
    oasisLevel.levelStoryText = @"After wandering the desert for what seems like months, you begin to see something up ahead. You're not sure if it's a mirage but you t ake your chances. You come upon a small village that rests upon an oasis. A man approaches and wants to sell you a special sword. But be warned, the sword comes with a dangerous price...";
    oasisLevel.actionButtonName = @"Buy the Sword?";
    ABGWeapon *demonSword = [[ABGWeapon alloc]init];
    demonSword.name = @"Demon Sword";
    oasisLevel.weapon = demonSword;
    demonSword.damage = 43;
    oasisLevel.alertViewTitle = @"Demon Sword!";
    oasisLevel.alertViewLevelText = @"You have just bought the Legendary Demon Sword! Instead of money, the sword only accepts payment in life. -80 Health payment!";
    oasisLevel.healthEffect = -80;
    oasisLevel.coordinatePoint = CGPointMake(0, 1);
    //    gets sword (+45 damage) but loses all health down to 25 and armor down to 5
    
    ABGTiles *dunesLevel = [[ABGTiles alloc] init];
    dunesLevel.levelname = @"Dunes";
    dunesLevel.levelimage = [UIImage imageNamed:@"Dunes.jpg"];
    dunesLevel.levelStoryText = @"You have reached the hottest part of the desert. Already exhausted from your journey so far, it seems like you can't go on any further. The area is known to have nightly raids by bandits. You have a choice to rest under the tree, or push on through toward the horizon...";
    dunesLevel.actionButtonName = @"Stop and Rest?";
    dunesLevel.alertViewTitle = @"Thief, Stop!";
    dunesLevel.alertViewLevelText = @"While you were resting, you were raided by bandits! You lose your weapon and -40 health!";
    dunesLevel.coordinatePoint = CGPointMake(0, 2);
    //    Alertview - rest = lose your weapon but gain full health///or reduce health (-20) but retain weapon.
    
    ABGTiles *shoreLevel = [[ABGTiles alloc] init];
    shoreLevel.levelname = @"Shore";
    shoreLevel.levelimage = [UIImage imageNamed:@"Shore.png"];
    shoreLevel.levelStoryText = @"Finally, you have reached the water's edge. You have a feeling you are getting very close to finding your ship and crew...";
    shoreLevel.actionButtonName = @"Search for Supplies";
    shoreLevel.alertViewTitle = @"Supplies found!";
    shoreLevel.alertViewLevelText = @"you find a pistol and a bunch of ammo!";
    shoreLevel.coordinatePoint = CGPointMake(2, 2);
    ABGWeapon *pistol = [[ABGWeapon alloc]init];
    pistol.name = @"Pistol";
    pistol.damage  = 50;
    shoreLevel.weapon = pistol;
    
    ABGTiles *lagoonLevel = [[ABGTiles alloc] init];
    lagoonLevel.levelname = @"Lagoon";
    lagoonLevel.levelimage = [UIImage imageNamed:@"Lagoon.jpg"];
    lagoonLevel.levelStoryText = @"You emerge from the trees into a large lagoon. Your eyes widen as you realize the shipwreck before your eyes is your ship! Suddenly, a flashback takes over... You then spot a usable rowboat...";
    lagoonLevel.coordinatePoint = CGPointMake(2, 1);
    lagoonLevel.actionButtonName = @"See Flashback?";
    //   Alertview - says that you were betrayed and marooned by your first mate, Blackbeard...you remember he resides on an island 2 clicks south of here
    lagoonLevel.alertViewTitle = @"Mutiny!";
    lagoonLevel.alertViewLevelText = @"Your memory has returned! You remember your first mate, Blackbeard, formed a mutiny and had you morooned in the desert. The last thing he said he was heading toward an island 2 clicks North of here!";
    
    ABGTiles *beachLevel = [[ABGTiles alloc] init];
    beachLevel.levelname = @"Beach";
    beachLevel.levelimage = [UIImage imageNamed:@"Beach.jpg"];
    beachLevel.levelStoryText = @" You emerge onto a beautiful beach. All of a sudden the ground beneath your feet begin to dissolve. A large crab emerges from the sand!";
    beachLevel.actionButtonName = @"Attack";
    beachLevel.alertViewTitle = @"ATTACKED!";
    beachLevel.alertViewLevelText = @"You were attacked by a hidden sand crab! The crabs shell is too strong for any weapon, you lose 20 Health!";
    beachLevel.coordinatePoint = CGPointMake(0, 3);
    //  Alertview - Crab( Health - 30, damage - 20, armor - 50)
    
    ABGTiles *oceanLevel = [[ABGTiles alloc] init];
    oceanLevel.levelname = @"Ocean";
    oceanLevel.levelimage = [UIImage imageNamed:@"Ocean.jpeg"];
    oceanLevel.levelStoryText = @"You are now on the open waters. The sun beats down on you with unrelenting heat. You must keep going and keep justice in your mind...";
    oceanLevel.actionButtonName = @"Search for Food";
    oceanLevel.alertViewTitle = @"Found!";
    oceanLevel.alertViewLevelText = @"You're in the middle of the Sea! There's nothing here!";
    oceanLevel.coordinatePoint = CGPointMake(1, 3);
    //  Alertview - find nothing except seaweed
    
    ABGTiles *bayLevel = [[ABGTiles alloc] init];
    bayLevel.levelname = @"Bay";
    bayLevel.levelimage = [UIImage imageNamed:@"Bay.jpg"];
    bayLevel.levelStoryText = @"You come across the Black Water Bay. This land is filled with pirate ruins and is said this land is cursed with the blood of former Pirates, you'd better be careful";
    bayLevel.actionButtonName = @"Search for Supplies";
    bayLevel.alertViewTitle = @"Found!";
    bayLevel.alertViewLevelText = @"You find a new set of Steel Armor";
    bayLevel.coordinatePoint = CGPointMake(1, 2);
    ABGArmor *steelArmor = [[ABGArmor alloc] init];
    steelArmor.name = @"Steel Armor";
    steelArmor.rating = 45;
    bayLevel.armor = steelArmor;
    //  Alertview - new armor +50 leather
    
    ABGTiles *islandLevel = [[ABGTiles alloc] init];
    islandLevel.levelname = @"Island";
    islandLevel.levelimage = [UIImage imageNamed:@"Island.jpg"];
    islandLevel.levelStoryText = @"This is it! You've finally reached the island. Blackbeard is here! and he is ready for a fight!";
    islandLevel.actionButtonName = @"Attack!";
    islandLevel.alertViewTitle = @"Blackbeard's ";
    islandLevel.alertViewLevelText = @"Your former pirate hits you for # damage!";
    islandLevel.coordinatePoint = CGPointMake(2, 3);
    //  Fight with Blackbeard


NSMutableArray *column1 = [[NSMutableArray alloc] initWithObjects:desertLevel, oasisLevel, dunesLevel, beachLevel, nil];

NSMutableArray *column2 = [[NSMutableArray alloc] initWithObjects: forestLevel, statueLevel, bayLevel, oceanLevel, nil];

NSMutableArray *column3 = [[NSMutableArray alloc] initWithObjects: mountainSideLevel, lagoonLevel, shoreLevel, islandLevel, nil];

NSArray *tiles= [[NSArray alloc] initWithObjects: column1, column2, column3, nil];
    
    return tiles;
}

-(Character *)character;
{
    Character *character = [[Character alloc] init];
    character.health = 50;

    ABGArmor *armor = [[ABGArmor alloc] init];
    armor.name = @"Cloak";
    armor.rating = 10;
    character.armor = armor;
    
    ABGWeapon *weapon = [[ABGWeapon alloc] init];
    weapon.name = @"Fists";
    weapon.damage = 5;
    character.weapon = weapon;
    
    return character;
}

-(Boss *)boss;
{
    Boss *blackbeard = [[Boss alloc] init];
    blackbeard.health = 65;
    blackbeard.damage = 30;
    return blackbeard;
}


@end
