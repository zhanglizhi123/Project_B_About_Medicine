//
//  MineController.m
//  PocketMedicine
//
//  Created by lanou3g on 15/10/6.
//  Copyright © 2015年 organazation. All rights reserved.
//

#import "MineController.h"
#import "ALmeUpView.h"
#import "MineCell.h"
#import "AboutWeVC.h"
#import "LawyerVC.h"
#import "LoginVC.h"

@interface MineController ()

@end

@implementation MineController

static NSString *mineCell = @"mineCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //去除分割线
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    //注册cell
    [self.tableView registerNib:[UINib nibWithNibName:@"MineCell" bundle:nil] forCellReuseIdentifier:mineCell];

}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 4;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 60;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    MineCell *cell = [tableView dequeueReusableCellWithIdentifier:mineCell forIndexPath:indexPath];
    if (indexPath.row == 0) {
        cell.markImageView.image = [UIImage imageNamed:@"icon_syssetting_aboutus"];
        cell.declareLabel.text = @"关于我们";
    }else if(indexPath.row == 1){
        cell.markImageView.image = [UIImage imageNamed:@"icon_collecct"];
        cell.declareLabel.text = @"我的收藏";
    }else if(indexPath.row == 2){
        cell.markImageView.image = [UIImage imageNamed:@"icon_syssetting_legalnotice"];
        cell.declareLabel.text = @"法律声明";
    }else{
        cell.markImageView.image = [UIImage imageNamed:@"icon_syssetting_clearcookie"];
        cell.declareLabel.text = @"清楚缓存";
    }
    
    return cell;
}

//区头
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    ALmeUpView *upView = [ALmeUpView meupView];
    
    return upView;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    
    return 200;
}

#pragma mark - tableView delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.row == 0) {
        
        AboutWeVC *aboutVC = [[AboutWeVC alloc]init];
        [self.navigationController pushViewController:aboutVC animated:YES];
        
    }else if(indexPath.row == 1){
        
        LoginVC *loginVC = [LoginVC new];
        [self.navigationController pushViewController:loginVC animated:YES];
        
    }else if(indexPath.row == 2){

        LawyerVC *lawyerVC = [LawyerVC new];
        [self.navigationController pushViewController:lawyerVC animated:YES];
        
    }else{

    }
}




@end








