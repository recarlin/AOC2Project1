//
//  baseTower.m
//  Project1
//
//  Created by Russell Carlin on 9/25/12.
//  Copyright (c) 2012 Russell Carlin. All rights reserved.
//

#import "baseTower.h"

@implementation baseTower

//easy "getters" and "setters"
@synthesize towerLevel, towerName;

//simple init, setting defaults so I know if they are changed later in the implementation
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        self.towerLevel = 1;
        self.towerName = @"Basic Tower";
    }
    return self;
}

//default calculation
-(int)calculateCost
{
    return towerLevel * 80;
}
@end
