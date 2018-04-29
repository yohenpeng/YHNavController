//
//  HiddenBaseViewController.m
//  TextNav
//
//  Created by 彭依汉 on 16/5/12.
//  Copyright © 2016年 PengEhan. All rights reserved.
//

#import "HiddenBaseViewController.h"
#import "TranslucentBaseViewController.h"
#import "OpaueBaseViewController.h"
#import "Masonry.h"
#import "NoHidModelViewController.h"
#import "HansNavController.h"
/**
 *  
 */

@interface HiddenBaseViewController ()

@end

@implementation HiddenBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setNavTitle];
    
    

}

-(void)setNavTitle{
    self.navigationItem.title = @"";
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"" style:UIBarButtonItemStylePlain target:self action:@selector(nothing)];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"" style:UIBarButtonItemStylePlain target:self action:@selector(nothing)];
}

-(void)nothing{

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

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear: animated];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:YES];
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
