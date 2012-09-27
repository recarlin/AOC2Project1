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
    switch (towerType) {
        case LIGHTNING:
        {
            return [[lightningTower alloc]init];
        }
            break;
        case FIRE:
        {
            return [[fireTower alloc]init];
        }
            break;
        case ICE:
        {
            return [[iceTower alloc]init];
        }
            break;
        
        default:
        {
            return nil;
        }
            break;
    };
}

@end
