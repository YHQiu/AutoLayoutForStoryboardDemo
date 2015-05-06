//
//  YHRootViewController.m
//  AutoLayoutForStoryboardDemo
//
//  Created by 邱弘宇 on 15-5-6.
//  Copyright (c) 2015年 邱弘宇. All rights reserved.
//

#import "YHRootViewController.h"

@interface YHRootViewController ()

@end

@implementation YHRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadView{
    [super loadView];
    YHStoryBoadAutoLayout *layout = [[YHStoryBoadAutoLayout alloc]init];
    [layout autoLayoutView:self.view];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
