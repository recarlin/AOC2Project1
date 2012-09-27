//
//  lightningTower.m
//  Project1
//
//  Created by Russell Carlin on 9/25/12.
//  Copyright (c) 2012 Russell Carlin. All rights reserved.
//

#import "lightningTower.h"

@implementation lightningTower

@synthesize costPerRod, amountMetalRods;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setCostPerRod:0];
        [self setAmountMetalRods:0];
        
        [self setTowerLevel:0];
        [self setTowerName:@"Lightning Tower"];
    }
    return self;
}

-(int)calculateCost
{
    return self.towerLevel * 80 + amountMetalRods * costPerRod;
}
@end
