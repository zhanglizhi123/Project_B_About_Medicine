//
//  LoginVC.m
//  PocketMedicine
//
//  Created by lanou3g on 15/10/7.
//  Copyright © 2015年 organazation. All rights reserved.
//

#import "LoginVC.h"
#import "LoginV.h"
#import "RegisterVC.h"
@interface LoginVC ()<loginDelegate>

@end

@implementation LoginVC

- (void)viewDidLoad {
    [super viewDidLoad];
    LoginV *loginV = [LoginV login];
    loginV.delegate = self;
    self.view = loginV;
}

- (void)pushRegisterPage{
    RegisterVC *regVC = [RegisterVC new];
    [self.navigationController pushViewController:regVC animated:YES];
    
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
