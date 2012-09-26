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
        [self setTowerLevel:2];
        [self setTowerName:@"TERWER!"];
    }
    return self;
}

-(int)calculateDamage
{
    return 1;
}
@end
