//
//  MenuTransitionManager.h
//  SlideMenu
//
//  Created by Danny Ho on 3/10/16.
//  Copyright © 2016 thanksdanny. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MenuTransitionManager : UIViewController

@end

@protocol MenuTransitionManager <NSObject>

- (void)dismiss;

@end