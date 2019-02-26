//
//  FoodListViewController.m
//  EatTrainSleepRepeat
//
//  Created by Артём Балашов on 26/02/2019.
//  Copyright © 2019 pockerhead. All rights reserved.
//

#import "FoodListViewController.h"
#import <UIKit/UIKit.h>

@interface FoodListViewController () <FoodListView>
@property (nonatomic, strong) UITableView *tableView;
@end

@interface FoodListViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation FoodListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureUI];
}

-(void)configureUI {
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    [self.view addSubview:self.tableView];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell* cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"reuse"];
    cell.textLabel.text = [NSString stringWithFormat:@"%ld", (long)indexPath.section];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%ld", (long)indexPath.row];
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}


@end
