//
//  YYUserInfoCell.m
//  YYNib
//
//  Created by 昭荣伊 on 16/6/2.
//  Copyright © 2016年 昭荣伊. All rights reserved.
//

#import "YYUserInfoCell.h"

@interface YYUserInfoCell ()

@property (weak, nonatomic) IBOutlet UILabel *contentLabel;

@end

@implementation YYUserInfoCell

+ (instancetype)cellWithTableView:(UITableView *)tableView {
    YYUserInfoCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuseIdentifier"];
    if (!cell) {
        cell = [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil].firstObject;
    }
    return cell;
}

- (void)setContent:(NSString *)content {
    _content = [content copy];
    _contentLabel.text = content;
    CGSize contentSize = [_contentLabel sizeThatFits:CGSizeMake(self.bounds.size.width, MAXFLOAT)];
    _cellHeight = 60 + contentSize.height;
}

- (CGSize)sizeThatFits:(CGSize)size {
    CGFloat totalHeight = 60;
    totalHeight += [self.contentLabel sizeThatFits:size].height;
    totalHeight += 10; // margins
    return CGSizeMake(size.width, totalHeight);
}


@end
