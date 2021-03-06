//
//  ZEMarkTableViewCell.m
//  Demos
//
//  Created by taffy on 16/7/12.
//  Copyright © 2016年 taffy. All rights reserved.
//

#import "ZEMarkTableViewCell.h"
#import "ZEMark.h"

@interface ZEMarkTableViewCell()

@property(nonatomic)UIImageView *iconImageView;
@property(nonatomic)UILabel *titleLabel;
@property(nonatomic)UILabel *contentLabel;

@end

@implementation ZEMarkTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
	self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
	
	if (self) {
		self.iconImageView = [[UIImageView alloc] init];
		[self.contentView addSubview:self.iconImageView];
		[self.iconImageView mas_makeConstraints:^(MASConstraintMaker *make) {
			make.left.equalTo(self.contentView).offset(10);
			make.top.equalTo(self.contentView).offset(17);
			make.size.mas_equalTo(CGSizeMake(16, 16));
		}];
		
		self.titleLabel = [[UILabel alloc] init];
		[self.titleLabel setFont:[UIFont boldSystemFontOfSize:16]];
		[self.contentView addSubview:self.titleLabel];
		[self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
			make.left.equalTo(self.iconImageView.mas_right).offset(5);
			make.top.equalTo(self.contentView).offset(15);
			make.right.equalTo(self.contentView).offset(-10);
		}];
		
		self.contentLabel = [[UILabel alloc] init];
		[self.contentLabel setNumberOfLines:2];
		[self.contentLabel setLineBreakMode:NSLineBreakByTruncatingTail];
		[self.contentLabel setFont:[UIFont systemFontOfSize:15]];
		[self.contentView addSubview:self.contentLabel];
		[self.contentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
			make.left.equalTo(self.contentView).offset(10);
			make.top.equalTo(self.iconImageView.mas_bottom).offset(8);
			make.right.equalTo(self.contentView).offset(-10);
			make.bottom.equalTo(self.contentView).offset(-15);
		}];
		
		zh_addThemeWithBlock(self, ^{
			[self.contentView setBackgroundColor:zh_color(color_BG06)];
			[self setBackgroundColor:zh_color(color_BG06)];
			[self.contentLabel setTextColor:zh_color(color_R02)];
			[self.titleLabel setTextColor:zh_color(color_W01)];
			[self.iconImageView setImage:zh_image(image_Read_Bookmarks)];
		});
	}
	
	return self;
}

- (void)setupDataWithMark:(ZEMark *)mark {
	
	NSString *content = [mark.checkText stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
	content =[content stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
	
	self.titleLabel.text = mark.chapterTitle;
	self.contentLabel.text = content;
}


@end
