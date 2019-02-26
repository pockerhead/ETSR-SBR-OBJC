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
    [self.presenter viewDidLoad];
}

- (void)configureUI {
    self.tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
    [self.view addSubview:self.tableView];
    [self.tableView fillSuperview];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell* cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"reuse"];
    cell.textLabel.text = [NSString stringWithFormat:@"%ld", (long)indexPath.section];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%ld", (long)indexPath.row];
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.presenter didSelectCellWithIndexPath:indexPath];
}

@end
