//
//  SuperCardBaseViewController.m
//  TextNav
//
//  Created by 彭依汉 on 16/5/12.
//  Copyright © 2016年 PengEhan. All rights reserved.
//

#import "BaseViewController.h"
#import "Masonry.h"
#import "HiddenBaseViewController.h"
#import "TranslucentBaseViewController.h"
#import "OpaueBaseViewController.h"
#import "NoHidModelViewController.h"


/**
 *  所有页面控制器的基类，不负责控制Navigationbar的显示和隐藏
 */
@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self configNavBackItem];
    
    [self fillPage];
    
    
    UIButton *goToTranslucentBtn = [UIButton new];
    [goToTranslucentBtn setTitle:@"透明导航栏" forState:UIControlStateNormal];
    [goToTranslucentBtn addTarget:self action:@selector(translucentAction) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:goToTranslucentBtn];
    
    [goToTranslucentBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.centerY.equalTo(self.view).with.offset(-100);
    }];
    
    
    UIButton *goOpaueBtn = [UIButton new];
    [goOpaueBtn setTitle:@"不透明透明导航栏" forState:UIControlStateNormal];
    [goOpaueBtn addTarget:self action:@selector(opaueAction) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:goOpaueBtn];
    
    [goOpaueBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(goToTranslucentBtn.mas_bottom).with.offset(20);
    }];
    
    UIButton *goHiddenBtn = [UIButton new];
    [goHiddenBtn setTitle:@"去往无导航栏" forState:UIControlStateNormal];
    [goHiddenBtn addTarget:self action:@selector(hiddenAction) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:goHiddenBtn];
    
    [goHiddenBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(goOpaueBtn.mas_bottom).with.offset(20);
    }];
    
    
    UIButton *goPresentBtn = [UIButton new];
    [goPresentBtn setTitle:@"模态视图" forState:UIControlStateNormal];
    [goPresentBtn addTarget:self action:@selector(presentAction) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:goPresentBtn];
    
    [goPresentBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(goHiddenBtn.mas_bottom).with.offset(20);
    }];
    
}


-(void)presentAction{
//    [self.navigationController presentViewController:[PresentViewController new] animated:YES completion:nil];
}


-(void)hiddenAction{
    [self.navigationController pushViewController:[HiddenBaseViewController new] animated:YES];
}

-(void)translucentAction{
    [self.navigationController pushViewController:[TranslucentBaseViewController new] animated:YES];
}

-(void)opaueAction{
    [self.navigationController pushViewController:[OpaueBaseViewController new] animated:YES];
}


-(void)configNavBackItem{
    UIBarButtonItem *newBackButton =
    [[UIBarButtonItem alloc] initWithTitle:@"返回"
                                     style:UIBarButtonItemStylePlain
                                    target:nil
                                    action:nil];
    [[self navigationItem] setBackBarButtonItem:newBackButton];
}

-(void)fillPage{
//    self.view.backgroundColor = [UIColor lightGrayColor];
    
    UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"back"]];
    [self.view addSubview:imageView];
    
    [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view);
        make.bottom.equalTo(self.view);
        make.left.equalTo(self.view);
        make.right.equalTo(self.view);
    }];
    
    
    UILabel *label = [UILabel new];
    [self.view addSubview:label];
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).with.offset(50);
        make.left.equalTo(self.view);
        make.right.equalTo(self.view);
        make.height.equalTo(@50);
    }];
    
    
    [label setText:[NSString stringWithFormat:@"这是第%lu个ViewController",self.navigationController.viewControllers.count]];
    
    NSLog(@"%lu",self.navigationController.viewControllers.count);
    
    self.navigationItem.title = [NSString stringWithFormat:@"第%lu个",self.navigationController.viewControllers.count];

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
