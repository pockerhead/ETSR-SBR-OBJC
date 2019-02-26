//
//  FoodListRouter.h
//  EatTrainSleepRepeat
//
//  Created by Artem Balashov on 26/02/2019.
//  Copyright © 2019 pockerhead. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "FoodListProtocols.h"

NS_ASSUME_NONNULL_BEGIN

@interface FoodListRouter : NSObject<FoodListWireframeInterface>

@property (weak, nonatomic) UIViewController *viewController;

@end

NS_ASSUME_NONNULL_END
