//
//  LoginV.m
//  PocketMedicine
//
//  Created by lanou3g on 15/10/7.
//  Copyright © 2015年 organazation. All rights reserved.
//

#import "LoginV.h"
#import "RegisterVC.h"
#import "AFNetworking.h"
#define kLogin @"http://api.lkhealth.net/index.php"

@implementation LoginV
//注册
- (IBAction)register:(id)sender {

    [_delegate pushRegisterPage];
}

- (IBAction)qqloginButton:(id)sender {
    
}

- (IBAction)sinaLoginButton:(id)sender {
    
}

//登陆
- (IBAction)localLoginButton:(id)sender {
    
    
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"r"] = @"user/login";
    params[@"userName"] = self.userPhoneTextField.text;
    params[@"passWord"] = self.passWordTextField.text;
    [manager GET:kLogin parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"____");
    }];
    
}

+ (instancetype)login{
    return [[[NSBundle mainBundle] loadNibNamed:@"LoginV" owner:nil options:nil] lastObject];
}

@end
