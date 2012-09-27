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
//create a lightning tower
    
    lightningTower *myLightningTower = (lightningTower*)[towerFactory createTower:LIGHTNING];
    if (myLightningTower != nil){
        
//set the data members
        
        myLightningTower.towerLevel = 8;
        myLightningTower.amountMetalRods = 2 * myLightningTower.towerLevel;
        myLightningTower.costPerRod = 10;

//set label formatting, name and level text, and display it
        
        lightningTowerInfo = [[UILabel alloc]initWithFrame:CGRectMake(10.0f, 10.0f, 300.0f, 60.0f)];
        lightningTowerInfo.text = [NSString stringWithFormat:@"You made a level %d %@.", [myLightningTower towerLevel],[myLightningTower towerName]];
        lightningTowerInfo.numberOfLines = 3;
        lightningTowerInfo.textAlignment = UITextAlignmentCenter;
        lightningTowerInfo.backgroundColor = [UIColor yellowColor];
        [self.view addSubview:lightningTowerInfo];
        
//set label formatting, rods and cost text, and display it
        
        lightningTowerCost = [[UILabel alloc]initWithFrame:CGRectMake(10.0f, 80.0f, 300.0f, 60.0f)];
        int baseCost = myLightningTower.towerLevel * 80;
        int totalCost = myLightningTower.calculateCost;
        lightningTowerCost.text = [NSString stringWithFormat:@"Base cost of %d + %d metal rods at %d gold each. Total cost: %d gold.", baseCost, [myLightningTower amountMetalRods], [myLightningTower costPerRod], totalCost];
        lightningTowerCost.numberOfLines = 3;
        lightningTowerCost.textAlignment = UITextAlignmentCenter;
        lightningTowerCost.backgroundColor = [UIColor yellowColor];
        [self.view addSubview:lightningTowerCost];
    }

//create a fire tower
    
    fireTower *myFireTower = (fireTower*)[towerFactory createTower:FIRE];
    if (myFireTower != nil){
        
//set the data members
        
        myFireTower.towerLevel = 3;
        myFireTower.fireEssencePerLevel = 10;
        
//set label formatting, name and level text, and display it
        
        fireTowerInfo = [[UILabel alloc]initWithFrame:CGRectMake(10.0f, 160.0f, 300.0f, 60.0f)];
        fireTowerInfo.text = [NSString stringWithFormat:@"You made a level %d %@.", [myFireTower towerLevel],[myFireTower towerName]];
        fireTowerInfo.numberOfLines = 3;
        fireTowerInfo.textAlignment = UITextAlignmentCenter;
        fireTowerInfo.backgroundColor = [UIColor redColor];
        fireTowerInfo.textColor = [UIColor whiteColor];
        [self.view addSubview:fireTowerInfo];
        
//set label formatting, essence and cost text, and display it
        
        fireTowerCost = [[UILabel alloc]initWithFrame:CGRectMake(10.0f, 230.0f, 300.0f, 60.0f)];
        int totalCost = myFireTower.calculateCost;
        fireTowerCost.text = [NSString stringWithFormat:@"%d essence per level. Total cost: %d essence.", [myFireTower fireEssencePerLevel], totalCost];
        fireTowerCost.numberOfLines = 3;
        fireTowerCost.textAlignment = UITextAlignmentCenter;
        fireTowerCost.backgroundColor = [UIColor redColor];
        fireTowerCost.textColor = [UIColor whiteColor];
        [self.view addSubview:fireTowerCost];
    }
    
//create an ice tower
    
    iceTower *myIceTower = (iceTower*)[towerFactory createTower:ICE];
    if (myIceTower != nil){
        
//set the data members
        
        myIceTower.towerLevel = 5;
        myIceTower.discountPerLevel = 30;
        myIceTower.iceEssencePerLevel = 5;
        
//set label formatting, name and level text, and display it
        
        iceTowerInfo = [[UILabel alloc]initWithFrame:CGRectMake(10.0f, 310.0f, 300.0f, 60.0f)];
        iceTowerInfo.text = [NSString stringWithFormat:@"You made a level %d %@.", [myIceTower towerLevel],[myIceTower towerName]];
        iceTowerInfo.numberOfLines = 3;
        iceTowerInfo.textAlignment = UITextAlignmentCenter;
        iceTowerInfo.backgroundColor = [UIColor blueColor];
        iceTowerInfo.textColor = [UIColor whiteColor];
        [self.view addSubview:iceTowerInfo];
        
//set label formatting, essence/discount and cost text, and display it
        
        iceTowerCost = [[UILabel alloc]initWithFrame:CGRectMake(10.0f, 380.0f, 300.0f, 60.0f)];
        int essenceTotalCost = [myIceTower iceEssencePerLevel] * [myIceTower towerLevel];
        int totalCost = myIceTower.calculateCost;
        iceTowerCost.text = [NSString stringWithFormat:@"Base cost per level of 80 - %d discount. %d essence per level Total cost: %d gold and %d essence.", [myIceTower discountPerLevel], [myIceTower iceEssencePerLevel], totalCost, essenceTotalCost];
        iceTowerCost.numberOfLines = 3;
        iceTowerCost.textAlignment = UITextAlignmentCenter;
        iceTowerCost.backgroundColor = [UIColor blueColor];
        iceTowerCost.textColor = [UIColor whiteColor];
        [self.view addSubview:iceTowerCost];
    }
    
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
