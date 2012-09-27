//
//  baseTower.h
//  Project1
//
//  Created by Russell Carlin on 9/25/12.
//  Copyright (c) 2012 Russell Carlin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface baseTower : NSObject
{
    int towerType;
}

typedef enum
{
    LIGHTNING,
    FIRE,
    ICE
} towerType;

@property int towerLevel;
@property NSString *towerName;

-(id)init;

-(int)calculateCost;

@end
