//
//  FoodListPresenter.h
//  EatTrainSleepRepeat
//
//  Created by Артём Балашов on 26/02/2019.
//  Copyright © 2019 pockerhead. All rights reserved.
//

#import "FoodListProtocols.h"

@interface FoodListPresenter: NSObject<FoodListPresenterInterface>
@property (nonatomic, weak) NSObject<FoodListView> *view;
- (instancetype)initWithView:(NSObject<FoodListView>*)view
                      router:(NSObject<FoodListWireframeInterface>*)router;

@end
