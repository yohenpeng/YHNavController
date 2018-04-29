//
//  TranslucentBaseViewController.m
//  TextNav
//
//  Created by 彭依汉 on 16/5/12.
//  Copyright © 2016年 PengEhan. All rights reserved.
//

#import "TranslucentBaseViewController.h"
#import "Masonry.h"
#import "UIImage+ColorImage.h"
#import "NoHidModelViewController.h"
#import "HansNavController.h"

@interface TranslucentBaseViewController ()

@end

@implementation TranslucentBaseViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        _navigationBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth([UIScreen mainScreen].bounds), 64)];
        [_navigationBar setBackgroundImage:[UIImage imageWithColor:[UIColor orangeColor]] forBarMetrics:UIBarMetricsDefault];
        [_navigationBar setShadowImage:[UIImage new]];;
        [_navigationBar setTranslucent:NO];
        [self.view addSubview:_navigationBar];

    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

   [UIView animateWithDuration:2 delay:0 options:UIViewAnimationOptionRepeat|UIViewAnimationOptionCurveLinear|UIViewAnimationOptionAutoreverse animations:^{
       _navigationBar.alpha = 0;
    } completion:^(BOOL finished) {
        
    }];
}


-(void)presentAction{
    
    NoHidModelViewController *vc = [NoHidModelViewController new];
    UINavigationController  *nav = [[UINavigationController alloc]initWithRootViewController:vc];
    
    [self presentViewController:nav animated:YES completion:nil];
}



- (void)viewDidLayoutSubviews {
    [self.view bringSubviewToFront:_navigationBar];
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
