//
//  RegisterVC.m
//  PocketMedicine
//
//  Created by lanou3g on 15/10/7.
//  Copyright © 2015年 organazation. All rights reserved.
//

#import "RegisterVC.h"
#import "RegisterView.h"

@interface RegisterVC ()

@end

@implementation RegisterVC

- (void)viewDidLoad {
    [super viewDidLoad];
    RegisterView *registerView = [RegisterView register];
//    registerView.phoneTextField.delegate = self;
//    registerView.passwordTextField.delegate = self;
    self.view = registerView;
    
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
