//
//  iceTower.m
//  Project1
//
//  Created by Russell Carlin on 9/25/12.
//  Copyright (c) 2012 Russell Carlin. All rights reserved.
//

#import "iceTower.h"

@implementation iceTower

@synthesize discountPerLevel;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setDiscountPerLevel:0];
        
        [self setTowerLevel:0];
        [self setTowerName:@"Lightning Tower"];
    }
    return self;
}

-(int)calculateCost
{
    int baseCost = self.towerLevel * 80;
    return baseCost - (baseCost * discountPerLevel);
}
@end
