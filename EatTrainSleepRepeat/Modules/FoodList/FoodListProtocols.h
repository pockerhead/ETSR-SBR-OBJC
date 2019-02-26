//
//  FoodListProtocols.h
//  EatTrainSleepRepeat
//
//  Created by Артём Балашов on 26/02/2019.
//  Copyright © 2019 pockerhead. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum : NSUInteger {
    dissmis = 0,
    pop = 1,
    auth = 2,
} FoodListNavigationOption;

@protocol FoodListWireframeInterface <NSObject>

@required -(void)navigateToOption:(FoodListNavigationOption)option;

@end

@protocol FoodListView <NSObject>

@end

@protocol FoodListPresenterInterface <NSObject>

@optional -(void)viewDidLoad;
@optional -(void)viewWillAppear;
@optional -(void)viewDidAppear;
@optional -(void)viewWillDissappear;
@optional -(void)viewDidDissappear;

@end


NS_ASSUME_NONNULL_END
