//
//  UINavigationController+Addtion.m
//  BIMManager
//
//  Created by gzy on 2018/3/1.
//  Copyright © 2018年 Dghy. All rights reserved.
//

#import "UINavigationController+Addtion.h"
#import "NSObject+Swizzling.h"

@implementation UINavigationController (Addtion)

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [self methodSwizzlingWithOriginalSelector:@selector(pushViewController:animated:) bySwizzledSelector:@selector(replacePushViewController:animated:)];
    });
}

- (void)replacePushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    if (self.viewControllers.count > 0) {
        UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithImage:[[UIImage imageNamed:@"箭头left40x40"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStylePlain target:self action:@selector(back)];
        backItem.imageInsets = UIEdgeInsetsMake(0, -10, 0, 0);
        viewController.navigationItem.leftBarButtonItem = backItem;
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [self replacePushViewController:viewController animated:animated];
    self.interactivePopGestureRecognizer.delegate = nil;
}

- (void)back {
    [self popViewControllerAnimated:YES];
}

- (BOOL)navigationBar:(UINavigationBar *)navigationBar shouldPushItem:(UINavigationItem *)item {
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [backButton setBackgroundImage:[[UIImage imageNamed:@"箭头left40x40"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    [backButton sizeToFit];
    backButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    backButton.contentEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 0);
    [backButton addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
//    item.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:backButton];
//    self.interactivePopGestureRecognizer.delegate = nil;
    return YES;
}

@end
