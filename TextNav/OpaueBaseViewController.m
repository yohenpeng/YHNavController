//
//  OpaueBaseViewController.m
//  TextNav
//
//  Created by 彭依汉 on 16/5/12.
//  Copyright © 2016年 PengEhan. All rights reserved.
//

#import "OpaueBaseViewController.h"
#import "UIImage+ColorImage.h"
#import "NoHidModelViewController.h"
#import "HansNavController.h"

@interface OpaueBaseViewController ()

@end

@implementation OpaueBaseViewController

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
    // Do any additional setup after loading the view.
}

- (void)viewDidLayoutSubviews {
    [self.view bringSubviewToFront:_navigationBar];
}


-(void)presentAction{
    
    NoHidModelViewController *vc = [NoHidModelViewController new];
    UINavigationController  *nav = [[UINavigationController alloc]initWithRootViewController:vc];
    
    [self presentViewController:nav animated:YES completion:nil];
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
