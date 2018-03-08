//
//  FirstViewController.m
//  自定义返回按钮demo
//
//  Created by gzy on 2018/3/2.
//  Copyright © 2018年 GZY. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"根视图";
    self.view.backgroundColor = [UIColor whiteColor];
    
    //这种只是改变文字,如果文字设置为空，那么箭头右边空白部分依然可以响应返回按钮
//    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithTitle:@"返回上级界面" style:UIBarButtonItemStylePlain target:nil action:nil];
//    self.navigationItem.backBarButtonItem = backItem;
    
    //这种系统自带的蓝色箭头依然存在,只是修改文字部分改成图片
//    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithImage:[[UIImage imageNamed:@"箭头left40x40"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStylePlain target:nil action:nil];
//    self.navigationItem.backBarButtonItem = backItem;
    
    //这种文字消失,图片不起效果
//    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    backButton.frame = CGRectMake(0, 0, 30, 30);
//    [backButton setTitle:@"返回" forState:UIControlStateNormal];
//    [backButton setImage:[[UIImage imageNamed:@"箭头left40x40"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
//    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:backButton];
    
    //这种设置可以在本导航控制器中统一设置返回箭头，文字部分只能本视图生效，其他导航控制器需另外设置
//    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
//    self.navigationController.navigationBar.backIndicatorImage = [[UIImage imageNamed:@"箭头left40x40"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    self.navigationController.navigationBar.backIndicatorTransitionMaskImage = [[UIImage imageNamed:@"箭头left40x40"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    self.navigationItem.backBarButtonItem = backItem;
}

- (void)back {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:secondVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
