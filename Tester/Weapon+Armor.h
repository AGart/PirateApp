//
//  Weapon+Armor.h
//  Tester
//
//  Created by Albee Gartenberg on 10/23/13.
//  Copyright (c) 2013 Albee Gartenberg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Weapon_Armor : NSObject

//Weapon
@property (strong, nonatomic) NSString *weaponName;
@property (nonatomic) int weaponDamage;

//Armor
@property (strong, nonatomic) NSString *armorName;
@property (nonatomic) int armorRating;
@end
