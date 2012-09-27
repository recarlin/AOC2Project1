//
//  iceTower.m
//  Project1
//
//  Created by Russell Carlin on 9/25/12.
//  Copyright (c) 2012 Russell Carlin. All rights reserved.
//

#import "iceTower.h"

@implementation iceTower

@synthesize discountPerLevel, iceEssencePerLevel;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        self.towerName = [NSString stringWithFormat:@"Level %d Ice Tower", self.towerLevel];
    }
    return self;
}

-(int)calculateCost
{
    return self.towerLevel * (80 - self.discountPerLevel);
}
@end
