//
//  ZEBookViewModel.h
//  Demos
//
//  Created by taffy on 16/7/1.
//  Copyright © 2016年 taffy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZEBook.h"

@class ZEChapter;

@interface ZEBookViewModel : NSObject

@property(nonatomic)ZEBook *book;
@property(nonatomic)NSInteger pageCount;
@property(nonatomic)NSInteger currentPage;

- (id)chapterAtPageIndex:(NSInteger)index completion:(id (^)(ZEChapter *, NSInteger))completion;
- (NSInteger)pageIndexAtMarkModel:(ZEMark *)mark;

- (NSInteger)calculateBookPageCount;

- (void)saveBooKModel;

- (void)appendMarkWithCurrentPage:(NSInteger)currentPage;
- (void)removeMarkWithCurrentPage:(NSInteger)currentPage;
- (BOOL)isMarkWithCurrentPage:(NSInteger)currentPage;


@end
