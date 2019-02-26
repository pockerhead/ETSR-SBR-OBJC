//
//  FoodListRouter.m
//  EatTrainSleepRepeat
//
//  Created by Artem Balashov on 26/02/2019.
//  Copyright © 2019 pockerhead. All rights reserved.
//

#import "FoodListRouter.h"
#import "FoodListProtocols.h"
#import "FoodAddConfigurator.h"

@implementation FoodListRouter

- (void)navigateToDetailWithTitle:(nonnull NSString *)title {
    UIViewController *vc = [FoodAddConfigurator createModuleWithTitle:title];
    [self navigateTo:vc];
}

- (void)navigateTo:(UIViewController *)vc {
    if([vc isKindOfClass:[UINavigationController class]]){
        [self.viewController presentViewController:vc animated:true completion:nil];
    } else if ([vc isKindOfClass:[UIViewController class]]) {
        if (self.viewController.navigationController){
            [self.viewController.navigationController pushViewController:vc animated:true];
        } else {
            [self.viewController presentViewController:vc animated:true completion:nil];
        }
    }
}

@end
