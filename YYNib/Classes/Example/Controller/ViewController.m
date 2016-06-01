//
//  ViewController.m
//  YYNib
//
//  Created by 昭荣伊 on 16/6/1.
//  Copyright © 2016年 昭荣伊. All rights reserved.
//

#import "ViewController.h"
#import "UserInfoView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UserInfoView *userInfo = [[UserInfoView alloc] initWithFrame:CGRectMake(20, 200, 200, 100)];
    [self.view addSubview:userInfo];
    
    
    UserInfoView *userInfo1 = [[UserInfoView alloc] init];
    userInfo1.frame = CGRectMake(20, 350, 260, 60);
    userInfo1.backgroundColor = [UIColor redColor];
    [self.view addSubview:userInfo1];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
