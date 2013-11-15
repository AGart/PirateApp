//
//  Character.h
//  Tester
//
//  Created by Albee Gartenberg on 10/23/13.
//  Copyright (c) 2013 Albee Gartenberg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ABGArmor.h"
#import "ABGWeapon.h"

@interface Character : NSObject

@property (nonatomic) int currentHealth;
@property (strong, nonatomic) ABGArmor *armor;
@property (strong, nonatomic) ABGWeapon *weapon;

@property (nonatomic) int damage;
@property (nonatomic) int health;

@end
