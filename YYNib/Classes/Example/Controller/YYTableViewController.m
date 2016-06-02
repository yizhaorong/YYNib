//
//  YYTableViewController.m
//  YYNib
//
//  Created by 昭荣伊 on 16/6/2.
//  Copyright © 2016年 昭荣伊. All rights reserved.
//

#import "YYTableViewController.h"
#import "YYUserInfoCell.h"
#import "UITableView+FDTemplateLayoutCell.h"

@interface YYTableViewController ()

@property (nonatomic, strong) NSArray *contents;

@end

@implementation YYTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _contents = @[@"严重注意:我们之前这么用都没注意过重用的问题,这样写,如果在xib页面没有设置 重用字符串的话",
                  @"如果忘了在xib中设置",
                  @"采用registerNib的方式,并且把设置都放在了willDisplayCell方法中了,而不是以前我们经常用的cellForRowAtIndexPath这个方法我试了下,如果我们在xib中设置了 Identifier,那么此处的必须一致,否则会crash的",
                  @"tableView dequeueReusableCellWithIdentifier:",
                  @"这样，就可以往这个新添加的View里面添加我们自己的个性化控件了",
                  @"因为是空的XIB文件，所有往文件列表框中拖入一个 UIView的控件，然后将这个",
                  @"严重注意:我们之前这么用都没注意过重用的问题,这样写,如果在xib页面没有设置 重用字符串的话严重注意:我们之前这么用都没注意过重用的问题,这样写,如果在xib页面没有设置 重用字符串的话严重注意:我们之前这么用都没注意过重用的问题,这样写,如果在xib页面没有设置 重用字符串的话严重注意:我们之前这么用都没注意过重用的问题,这样写,如果在xib页面没有设置 重用字符串的话严重注意:我们之前这么用都没注意过重用的问题,这样写,如果在xib页面没有设置 重用字符串的话严重注意:我们之前这么用都没注意过重用的问题,这样写,如果在xib页面没有设置 重用字符串的话严重注意:我们之前这么用都没注意过重用的问题,这样写,如果在xib页面没有设置 重用字符串的话严重注意:我们之前这么用都没注意过重用的问题,这样写,如果在xib页面没有设置 重用字符串的话严重注意:我们之前这么用都没注意过重用的问题,这样写,如果在xib页面没有设置 重用字符串的话严重注意:我们之前这么用都没注意过重用的问题,这样写,如果在xib页面没有设置 重用字符串的话严重注意:我们之前这么用都没注意过重用的问题,这样写,如果在xib页面没有设置 重用字符串的话严重注意:我们之前这么用都没注意过重用的问题,这样写,如果在xib页面没有设置 重用字符串的话严重注意:我们之前这么用都没注意过重用的问题,这样写,如果在xib页面没有设置 重用字符串的话"];
   
    [self.tableView registerNib:[UINib nibWithNibName:@"YYUserInfoCell" bundle:nil] forCellReuseIdentifier:@"reuseIdentifier"];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"关闭" style:UIBarButtonItemStyleDone target:self action:@selector(close:)];
}

- (void)close:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _contents.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    YYUserInfoCell *cell = [YYUserInfoCell cellWithTableView:tableView];
    // Configure the cell...
    [self configureCell:cell atIndexPath:indexPath];
    return cell;
}

- (void)configureCell:(YYUserInfoCell *)cell atIndexPath:(NSIndexPath *)indexPath {
    cell.content = _contents[indexPath.row];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [tableView fd_heightForCellWithIdentifier:@"reuseIdentifier" configuration:^(YYUserInfoCell *cell) {
        [self configureCell:cell atIndexPath:indexPath];
    }];
}

@end
