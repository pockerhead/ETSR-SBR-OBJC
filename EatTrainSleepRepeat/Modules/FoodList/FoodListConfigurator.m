//
//  FoodListConfigurator.m
//  EatTrainSleepRepeat
//
//  Created by Артём Балашов on 26/02/2019.
//  Copyright © 2019 pockerhead. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "FoodListConfigurator.h"
#import "FoodListViewController.h"
#import "FoodListPresenter.h"
#import "FoodListProtocols.h"
#import "FoodListRouter.h"

@interface FoodListConfigurator ()

@end

@implementation FoodListConfigurator

+ (UIViewController *)createModule {
    FoodListViewController *view = [[FoodListViewController alloc] init];
    FoodListRouter *router = [[FoodListRouter alloc] init];
    FoodListPresenter *presenter = [[FoodListPresenter alloc] initWithView:view router:router];
    view.presenter = presenter;
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:view];
    router.viewController = view;
    return nav;
}

@end
