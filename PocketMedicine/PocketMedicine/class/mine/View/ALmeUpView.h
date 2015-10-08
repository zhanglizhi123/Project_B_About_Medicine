//
//  ALmeUpView.h
//  FriendlyTravel
//
//  Created by lanou3g on 15/9/22.
//  Copyright (c) 2015年 lanou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ALmeUpView : UIView

@property (weak, nonatomic) IBOutlet UIImageView *backgroudImageView;
@property (weak, nonatomic) IBOutlet UIImageView *photoimageView;
@property (weak, nonatomic) IBOutlet UILabel *userNameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *sexImageView;

+ (instancetype)meupView;
@end
