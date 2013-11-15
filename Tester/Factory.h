//
//  Factory.h
//  Tester
//
//  Created by Albee Gartenberg on 10/23/13.
//  Copyright (c) 2013 Albee Gartenberg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Character.h"
#import "Boss.h"

@interface Factory : NSObject

-(NSArray *)tiles;
-(Character *)character;
-(Boss *)blackbeard;

@end
