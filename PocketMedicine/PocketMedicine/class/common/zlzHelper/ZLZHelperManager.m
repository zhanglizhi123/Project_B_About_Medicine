//
//  ZLZHelperManager.m
//  PocketMedicine
//
//  Created by lanou3g on 15/10/6.
//  Copyright © 2015年 organazation. All rights reserved.
//

#import "ZLZHelperManager.h"
#import "AreaHospitallModel.h"
#import "NearHospitallModel.h"
#import "AFNetworking.h"


#define kUrl(p,cityName,provinceName) [NSString stringWithFormat:@" http://api.lkhealth.net/index.php?r=drug/aroundhospital&start=%ld&rows=&lat=40.036261&lng=116.350322&distance=100&ksId=&cityName=%@&level=&provinceName=%@",p,cityName,provinceName]

//#define kURL(p,cityName,provinceName) [NSURL URLWithString:[NSString stringWithFormat:@" http://api.lkhealth.net/index.php?r=drug/aroundhospital&start=%ld&rows=&lat=40.036261&lng=116.350322&distance=100&ksId=&cityName=%@&level=&provinceName=%@",p,cityName,provinceName]];


@interface ZLZHelperManager ()

@property(nonatomic,strong) NSMutableArray *m_arr;

@end

@implementation ZLZHelperManager

+(ZLZHelperManager*)shareAreaManager{

    static ZLZHelperManager*manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        manager = [[ZLZHelperManager alloc]init];
    
    });

    return manager;

}
-(NSArray*)getDictWithPath:(NSString*)path{

    NSDictionary*dict = [NSDictionary dictionaryWithContentsOfFile:path];
    self.m_arr = [NSMutableArray arrayWithCapacity:10];
    
    for (NSString*key in dict) {
        NSDictionary*dict_1 = dict[key];
        
        //存放字典
        NSMutableDictionary*temp_dict = [NSMutableDictionary dictionaryWithCapacity:10];
        
        //遍历到省 dict_2
        for (NSString*key in dict_1) {
            NSDictionary*dict_2 = dict_1[key];
            
         
            
            NSString *shengS = key;
            
            if (dict_2.count == 1) {
                
                //存放市
                NSMutableArray*shi_array = [NSMutableArray array];
                
                //遍历到  0
                for (NSString*key in dict_2) {
                    NSDictionary*dict_3 = dict_2[key];
                    for (NSString*key in dict_3) {
                        
                         shi_array = [dict_3[key] mutableCopy];
                        [shi_array insertObject:@"全部" atIndex:0];
                        
                    }
                    
                    [temp_dict setValue:shi_array forKey:shengS];
                    
                }
                
                //[self.m_arr addObject:temp_dict];
                //NSLog(@"mmmmmmm %@",self.m_arr);
                
            }else{
                
                NSMutableArray*shi_array = [NSMutableArray array];
                //遍历到  0
                for (NSString*key in dict_2) {
                    NSDictionary*dict_3 = dict_2[key];
                   
                    NSString*shistr = [[dict_3 allKeys]firstObject];
                    
                    [shi_array addObject:shistr];
                    
                }
                [shi_array insertObject:@"全部" atIndex:0];
                [temp_dict setValue:shi_array forKey:shengS];
                
               
            }
            
        }
        
         [self.m_arr addObject:temp_dict];
        
    }

    return self.m_arr;
}

//附近主页面
-(void)makeFromURLGetModelWithPiage:(NSInteger)piage withCity:(NSString*)cityName withProvienceName:(NSString*)provienceName
{
    
//    NSString*strURL = kUrl(piage, cityName, provienceName);
//    strURL = [NSString stringWithUTF8String:NSUTF8StringEncoding];
//    
//    AFHTTPSessionManager*manager = [AFHTTPSessionManager manager];
//    manager
    
    
    


}




//-(NSArray*)getDictWithPath:(NSString*)path
//{
//
//    
//    //NSArray*t_array = @[@"北京市",@"天津市",@"上海市",@"重庆市",@"澳门特别行政区",@"香港特别行政区"];
//    
//    self.m_arr = [NSMutableArray arrayWithCapacity:10];
//    
//    NSDictionary*dict = [NSDictionary dictionaryWithContentsOfFile:path];
//    NSArray*t1_value = [dict allValues];
//    for (NSDictionary*t1_dict in t1_value) {
//        
//        //NSLog(@"%@",t1_dict);
//        NSArray*t2_value = [t1_dict allValues];
//        for (NSDictionary*t2_dict in t2_value) {
//            
//            NSString*nameS = [[t2_dict allKeys]firstObject];
//            NSMutableDictionary*s_dic = [NSMutableDictionary dictionaryWithCapacity:10];
//            NSArray*t3_value = [t2_dict allValues];
//            if ([t2_dict allKeys].count == 1) {
//            
//                NSMutableDictionary*m_dict = [NSMutableDictionary dictionaryWithCapacity:10];
//                
//                for (NSDictionary*t3_dict in t3_value) {
//                    
//                    NSString*key = [[t3_dict allKeys]firstObject];
//                    NSMutableArray*array = [t3_dict objectForKey:key];
//                    //[array insertObject:@"全部" atIndex:0];
//                    [m_dict setValue:array forKey:key];
//                    
//                }
//                
//                [self.m_arr addObject:m_dict];
//                
//            }else{
//                NSMutableArray*s_arr = [NSMutableArray arrayWithCapacity:10];
//                NSMutableDictionary*m_dict = [NSMutableDictionary dictionaryWithCapacity:10];
//
//                for (NSDictionary *t3_dict in t3_value) {
//                    
//                    NSString*str = [[t3_dict allKeys]firstObject];
//                    
//                    [s_arr addObject:str];
//                   
//
//                }
//                [s_arr insertObject:@"全部" atIndex:0];
//                
//                [s_dic setValue:s_arr forKey:nameS];
//            
//            
//            }
//            
//            [self.m_arr addObject:s_dic];
//            
//            
//        }
//        
//        
//        
//    }
//    
//    return self.m_arr;
//    
//    
//
//}
//




@end
