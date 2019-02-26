//
//  MainTabbarController.m
//  EatTrainSleepRepeat
//
//  Created by Артём Балашов on 23/02/2019.
//  Copyright © 2019 pockerhead. All rights reserved.
//

#import "MainTabbarController.h"
#import "FoodListConfigurator.h"
#import <UIKit/UIKit.h>

@interface MainTabbarController ()

@end

@implementation MainTabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIViewController* first = [FoodListConfigurator createModule];
    first.title = @"first";
    UIViewController* second = [FoodListConfigurator createModule];
    second.title = @"second";
    [self setViewControllers:@[first,second]];
    // Do any additional setup after loading the view.
}



@end
