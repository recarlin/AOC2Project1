//
//  ViewController.m
//  Project1
//
//  Created by Russell Carlin on 9/25/12.
//  Copyright (c) 2012 Russell Carlin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    lightningTower *myLightningTower = (lightningTower*)[towerFactory createTower:LIGHTNING];
    if (myLightningTower != nil){
        
    }
   
    fireTower *myFireTower = (fireTower*)[towerFactory createTower:FIRE];
    if (myFireTower != nil){
        
    }
    
    iceTower *myIceTower = (iceTower*)[towerFactory createTower:ICE];
    if (myIceTower != nil){
        
    }
    lightningTowerInfo = [[UILabel alloc]initWithFrame:CGRectMake(10.0f, 10.0f, 310.0f, 40.0f)];
    
    lightningTowerCost = [[UILabel alloc]initWithFrame:CGRectMake(10.0f, 50.0f, 310.0f, 40.0f)];
    
    fireTowerInfo = [[UILabel alloc]initWithFrame:CGRectMake(10.0f, 90.0f, 310.0f, 40.0f)];
    
    fireTowerCost = [[UILabel alloc]initWithFrame:CGRectMake(10.0f, 130.0f, 310.0f, 40.0f)];
    
    iceTowerInfo = [[UILabel alloc]initWithFrame:CGRectMake(10.0f, 170.0f, 310.0f, 40.0f)];
    
    iceTowerCost = [[UILabel alloc]initWithFrame:CGRectMake(10.0f, 210.0f, 310.0f, 40.0f)];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
