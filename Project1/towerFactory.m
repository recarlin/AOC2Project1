//
//  towerFactory.m
//  Project1
//
//  Created by Russell Carlin on 9/25/12.
//  Copyright (c) 2012 Russell Carlin. All rights reserved.
//

#import "towerFactory.h"

@implementation towerFactory

+(baseTower *)createTower: (int)towerType
{
    return [[lightningTower alloc]init];
}

@end
