//
//  NewsTableViewController.m
//  SlideMenu
//
//  Created by Danny Ho on 3/10/16.
//  Copyright © 2016 thanksdanny. All rights reserved.
//

#import "NewsTableViewController.h"
#import "NewsTableViewCell.h"

@interface NewsTableViewController () <UITableViewDataSource, UITableViewDelegate>


@end

@implementation NewsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Everyday Moments";
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.view.backgroundColor = [UIColor colorWithRed:0.062 green:0.062 blue:0.07 alpha:1];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NewsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor clearColor];
    
    if (indexPath.row == 0) {
        cell.postImageView.image = [UIImage imageNamed:@"1"];
        cell.postTitle.text = @"Love mountain.";
        cell.postAuthor.text = @"Allen Wang";
        cell.postAuthorView.image = [UIImage imageNamed:@"a"];
    } else if (indexPath.row == 1) {
        cell.postImageView.image = [UIImage imageNamed:@"2"];
        cell.postTitle.text = @"Love mountain.";
        cell.postAuthor.text = @"Allen Wang";
        cell.postAuthorView.image = [UIImage imageNamed:@"b"];
    } else if (indexPath.row == 2) {
        cell.postImageView.image = [UIImage imageNamed:@"3"];
        cell.postTitle.text = @"Love mountain.";
        cell.postAuthor.text = @"Allen Wang";
        cell.postAuthorView.image = [UIImage imageNamed:@"c"];
    } else {
        cell.postImageView.image = [UIImage imageNamed:@"4"];
        cell.postTitle.text = @"Love mountain.";
        cell.postAuthor.text = @"Allen Wang";
        cell.postAuthorView.image = [UIImage imageNamed:@"d"];
    }
    return cell;
}


@end
