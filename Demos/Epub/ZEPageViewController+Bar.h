//
//  ZEPageViewController+Bar.h
//  Demos
//
//  Created by taffy on 16/7/7.
//  Copyright © 2016年 taffy. All rights reserved.
//

#import "ZEPageViewController.h"

@interface ZEPageViewController (Bar)<ZEProgressViewDelegate>

- (void)setupNavigationBar;
- (void)setupToolBar;
- (void)showBar;
- (void)hiddenBar;

- (void)updateProgressValue;
- (void)updateNavigationBarMarkButton;


@end
