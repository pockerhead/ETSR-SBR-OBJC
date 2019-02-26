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

@interface FoodListConfigurator ()

@end

@implementation FoodListConfigurator

+(UIViewController*)createModule {
    FoodListViewController<FoodListView> *view = [[FoodListViewController alloc] init];
    FoodListPresenter<FoodListPresenterInterface> *presenter = [[FoodListPresenter alloc] initWithView:view];
    view.presenter = presenter;
    return view;
}

@end
