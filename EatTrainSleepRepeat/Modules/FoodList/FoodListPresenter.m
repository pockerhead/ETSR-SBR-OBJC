//
//  FoodListPresenter.m
//  EatTrainSleepRepeat
//
//  Created by Артём Балашов on 26/02/2019.
//  Copyright © 2019 pockerhead. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "FoodListPresenter.h"
#import "FoodListProtocols.h"

@interface FoodListPresenter () <FoodListPresenterInterface>
@end

@implementation FoodListPresenter

- (instancetype)initWithView:(NSObject<FoodListView>*)view
{
    self = [super init];
    if (self) {
        self.view = view;
    }
    return self;
}

@end
