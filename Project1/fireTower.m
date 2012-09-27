//
//  fireTower.m
//  Project1
//
//  Created by Russell Carlin on 9/25/12.
//  Copyright (c) 2012 Russell Carlin. All rights reserved.
//

#import "fireTower.h"

@implementation fireTower

@synthesize fieryMagicPerLevel;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setFieryMagicPerLevel:0];
        
        [self setTowerLevel:0];
        [self setTowerName:@"Lightning Tower"];
    }
    return self;
}

-(int)calculateCost
{
    return self.towerLevel * fieryMagicPerLevel;
}
@end
