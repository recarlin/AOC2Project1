//
//  iceTower.m
//  Project1
//
//  Created by Russell Carlin on 9/25/12.
//  Copyright (c) 2012 Russell Carlin. All rights reserved.
//

#import "iceTower.h"

@implementation iceTower

//easy "getters" and "setters"
@synthesize discountPerLevel, iceEssencePerLevel;

//simple init, setting the tower name
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        self.towerName = @"Ice Tower";
    }
    return self;
}

//modified calculation going off the the unique data members
-(int)calculateCost
{
    return self.towerLevel * (80 - self.discountPerLevel);
}
@end
