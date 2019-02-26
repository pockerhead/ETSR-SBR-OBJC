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
@property (strong, nonatomic) NSObject<FoodListWireframeInterface>* router;
@end

@implementation FoodListPresenter

- (instancetype)initWithView:(NSObject<FoodListView>*)view router:(NSObject<FoodListWireframeInterface>*)router
{
    self = [super init];
    if (self) {
        self.view = view;
        self.router = router;
    }
    return self;
}

- (void)viewDidAppear {
    //Default implementation
}

- (void)viewDidDissappear {
    //Default implementation
}

- (void)viewDidLoad {
    //Default implementation
}

- (void)viewWillAppear {
    //Default implementation
}

- (void)viewWillDissappear {
    //Default implementation
}

- (void)didSelectCellWithIndexPath:(nonnull NSIndexPath *)indexPath {
    [self.router navigateToDetailWithTitle:[NSString stringWithFormat:@"%@", indexPath]];
}


@end
