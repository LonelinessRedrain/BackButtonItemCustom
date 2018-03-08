//
//  NSObject+Swizzling.h
//  BIMManager
//
//  Created by gzy on 2017/9/18.
//  Copyright © 2017年 Dghy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Swizzling)

+ (void)methodSwizzlingWithOriginalSelector:(SEL)originalSelector bySwizzledSelector:(SEL)swizzledSelector;

@end
