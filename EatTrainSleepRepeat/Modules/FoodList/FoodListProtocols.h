//
//  FoodListProtocols.h
//  EatTrainSleepRepeat
//
//  Created by Артём Балашов on 26/02/2019.
//  Copyright © 2019 pockerhead. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol FoodListWireframeInterface <NSObject>

- (void)navigateToDetailWithTitle:(NSString *)title;

@end

@protocol FoodListView <NSObject>

@end

@protocol FoodListPresenterInterface <NSObject>

- (void)didSelectCellWithIndexPath:(NSIndexPath*)indexPath;

- (void)viewDidLoad;
- (void)viewWillAppear;
- (void)viewDidAppear;
- (void)viewWillDissappear;
- (void)viewDidDissappear;

@end


NS_ASSUME_NONNULL_END
