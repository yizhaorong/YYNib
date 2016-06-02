//
//  YYUserInfoCell.h
//  YYNib
//
//  Created by 昭荣伊 on 16/6/2.
//  Copyright © 2016年 昭荣伊. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YYUserInfoCell : UITableViewCell

@property (nonatomic, copy) NSString *content;

@property (nonatomic, assign ,readonly) CGFloat cellHeight;

+ (instancetype)cellWithTableView:(UITableView *)tableView;

@end
