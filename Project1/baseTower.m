//
//  baseTower.m
//  Project1
//
//  Created by Russell Carlin on 9/25/12.
//  Copyright (c) 2012 Russell Carlin. All rights reserved.
//

#import "baseTower.h"

@implementation baseTower

@synthesize towerLevel, towerName;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setTowerLevel:1];
        [self setTowerName:@"Basic Tower"];
    }
    return self;
}

-(int)calculateCost
{
    return towerLevel * 80;
}
@end
