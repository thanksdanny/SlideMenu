//
//  NewsTableViewCell.m
//  SlideMenu
//
//  Created by Danny Ho on 3/10/16.
//  Copyright © 2016 thanksdanny. All rights reserved.
//

#import "NewsTableViewCell.h"

@implementation NewsTableViewCell

- (void)awakeFromNib {
    // Initialization code
    self.postAuthorView.layer.cornerRadius = self.postAuthorView.frame.size.width / 2;
    self.postAuthorView.layer.masksToBounds = true;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
