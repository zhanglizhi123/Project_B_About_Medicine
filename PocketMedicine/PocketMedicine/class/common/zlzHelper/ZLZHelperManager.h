//
//  ZLZHelperManager.h
//  PocketMedicine
//
//  Created by lanou3g on 15/10/6.
//  Copyright © 2015年 organazation. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ZLZHelperManager : NSObject

+(ZLZHelperManager*)shareAreaManager;


//plist
-(NSArray*)getDictWithPath:(NSString*)path;

//附近主页面
-(void)makeFromURLGetModelWithPiage:(NSInteger)piage withCity:(NSString*)cityName withProvienceName:(NSString*)provienceName;






@end
