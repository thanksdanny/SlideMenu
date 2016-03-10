//
//  MenuTableViewController.m
//  SlideMenu
//
//  Created by Danny Ho on 3/10/16.
//  Copyright © 2016 thanksdanny. All rights reserved.
//

#import "MenuTableViewController.h"
#import "MenuTableViewCell.h"

@interface MenuTableViewController ()

@property (nonatomic, strong) NSString *currentItem;

@end

@implementation MenuTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.view.backgroundColor = [UIColor clearColor];
    
    self.currentItem = @"Everyday Moments";
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

- (NSArray *)data {
    return @[@"Everyday Moments", @"Popular", @"Editors", @"Upcoming", @"Fresh", @"Stock-photos", @"Trending"];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[self data] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MenuTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.menuItem.text = [self data][indexPath.row];
    cell.menuItem.textColor = ([self data][indexPath.row] == [self currentItem]) ? [UIColor whiteColor] : [UIColor grayColor];
    cell.backgroundColor = [UIColor clearColor];
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    MenuTableViewController *menuTableViewController = segue.sourceViewController;
    
    NSString *selectRow = [self data][menuTableViewController.tableView.indexPathForSelectedRow.row];
    self.currentItem = selectRow;
    
//    DetailTableViewController *detailVC = [segue destinationViewController];
//    NSString *selectedHero = [self.heroList[self.tableView.indexPathForSelectedRow.row][@"name"] stringByReplacingOccurrencesOfString:@"npc_dota_hero_" withString:@""];
//    detailVC.heroName = selectedHero;
}
@end
