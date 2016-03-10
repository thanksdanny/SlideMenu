//
//  MenuTransitionManager.m
//  SlideMenu
//
//  Created by Danny Ho on 3/10/16.
//  Copyright © 2016 thanksdanny. All rights reserved.
//

#import "MenuTransitionManager.h"

@interface MenuTransitionManager () <UIViewControllerAnimatedTransitioning, UIViewControllerTransitioningDelegate>
@property (nonatomic, strong) NSString *duration;
@property (nonatomic) BOOL isPresenting;
@property (nonatomic, strong) UIView *snapshot;

@end



@implementation MenuTransitionManager

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
