//
//  fireTower.m
//  Project1
//
//  Created by Russell Carlin on 9/25/12.
//  Copyright (c) 2012 Russell Carlin. All rights reserved.
//

#import "fireTower.h"

@implementation fireTower

@synthesize fireEssencePerLevel;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        self.towerName = [NSString stringWithFormat:@"Level %d Fire Tower", self.towerLevel];;
    }
    return self;
}

-(int)calculateCost
{
    return self.towerLevel * fireEssencePerLevel;
}
@end
