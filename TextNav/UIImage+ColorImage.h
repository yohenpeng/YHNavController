//
//  UIImage+ColorImage.h
//  ticket
//
//  Created by ken on 14-1-13.
//  Copyright (c) 2014年 ken. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ColorImage)
+ (UIImage *)imageWithColor:(UIColor *)color;
+ (UIImage *)imageForBarButtonItemWithColor:(UIColor *)color;
@end
