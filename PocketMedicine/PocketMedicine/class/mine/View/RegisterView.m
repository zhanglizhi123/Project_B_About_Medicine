//
//  RegisterView.m
//  PocketMedicine
//
//  Created by lanou3g on 15/10/7.
//  Copyright © 2015年 organazation. All rights reserved.
//

#import "RegisterView.h"
#import "AFNetworking.h"

#define kRegister @"http://api.lkhealth.net/index.php"
#define kSave @"http://api.lkhealth.net/index.php"

@implementation RegisterView

+ (instancetype)register{
    return [[[NSBundle mainBundle] loadNibNamed:@"RegisterView" owner:nil options:nil] lastObject];
}

//获取验证码
- (IBAction)checkButton:(id)sender {
    
    [self requestCheck];
}

//保存
- (IBAction)saveButton:(id)sender {
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"r"] = @"user/reg";
    params[@"code"] = @"411282";
    params[@"cellphone"] = self.phoneTextField.text;
    params[@"password"] = self.passwordTextField.text;
    [manager GET:kRegister parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"++++");
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"-----");
    }];

}

//获取验证码请求
- (void)requestCheck{
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"r"] = @"user/getcellphonecode";
    params[@"cellphone"] = self.phoneTextField.text;
    params[@"type"] = 0;
    [manager GET:kRegister parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
    
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"____");
    }];
}





@end
