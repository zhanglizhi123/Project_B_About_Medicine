//
//  LoginV.h
//  PocketMedicine
//
//  Created by lanou3g on 15/10/7.
//  Copyright © 2015年 organazation. All rights reserved.
//




#import <UIKit/UIKit.h>

@protocol loginDelegate <NSObject>

- (void)pushRegisterPage;

@end

@interface LoginV : UIView
@property (weak, nonatomic) IBOutlet UITextField *userPhoneTextField;
@property (weak, nonatomic) IBOutlet UITextField *passWordTextField;
@property (nonatomic, assign) id<loginDelegate>delegate;

- (IBAction)register:(id)sender;

+ (instancetype)login;

@end
