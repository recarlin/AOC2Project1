//
//  towerFactory.h
//  Project1
//
//  Created by Russell Carlin on 9/25/12.
//  Copyright (c) 2012 Russell Carlin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "baseTower.h"
#import "lightningTower.h"

@interface towerFactory : NSObject

+(baseTower *)createTower: (int)towerType;

@end
