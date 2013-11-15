//
//  ABGTiles.h
//  Tester
//
//  Created by Albee Gartenberg on 10/24/13.
//  Copyright (c) 2013 Albee Gartenberg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ABGWeapon.h"
#import "ABGArmor.h"

@interface ABGTiles : NSObject

@property (strong, nonatomic) NSString *levelname;
@property (strong, nonatomic) UIImage *levelimage;
@property (strong, nonatomic) NSString *levelStoryText;
@property (strong, nonatomic) NSString  *actionButtonName;

@property (nonatomic) CGPoint coordinatePoint;

@property (strong, nonatomic) NSString *alertViewLevelText;
@property (strong, nonatomic) NSString *alertViewTitle;

@property (strong, nonatomic) ABGWeapon *weapon;
@property (strong, nonatomic) ABGArmor *armor;
@property (nonatomic) int healthEffect;
@property (nonatomic) int armorEffect;
@property (nonatomic) int damageEffect;

@end
