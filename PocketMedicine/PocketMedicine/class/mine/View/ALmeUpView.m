//
//  ALmeUpView.m
//  FriendlyTravel
//
//  Created by lanou3g on 15/9/22.
//  Copyright (c) 2015年 lanou. All rights reserved.
//

#import "ALmeUpView.h"

#import "UIImageView+WebCache.h"
@implementation ALmeUpView

//创建item
+ (instancetype)meupView{

     return [[[NSBundle mainBundle] loadNibNamed:@"ALmeUpView" owner:nil options:nil] lastObject];
}

//用于绘制图形
- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        
        
    }
    return self;
}

- (void)awakeFromNib {
    
    self.photoimageView.layer.cornerRadius = 40;
    self.photoimageView.layer.masksToBounds = YES;
}


@end
