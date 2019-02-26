//
//  FoodListViewController.h
//  EatTrainSleepRepeat
//
//  Created by Артём Балашов on 26/02/2019.
//  Copyright © 2019 pockerhead. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FoodListProtocols.h"

NS_ASSUME_NONNULL_BEGIN

@interface FoodListViewController : UIViewController<FoodListView>

@property (nonatomic, strong) NSObject<FoodListPresenterInterface>* presenter;

@end

NS_ASSUME_NONNULL_END
