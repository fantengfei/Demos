//
//  ZEMarkListViewController.h
//  Demos
//
//  Created by taffy on 16/7/8.
//  Copyright © 2016年 taffy. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ZEBook;

@interface ZEMarkListViewController : UIViewController

+ (instancetype)newWithBookModel:(ZEBook *)book;

@end
