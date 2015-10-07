//
//  LawyerVC.m
//  PocketMedicine
//
//  Created by lanou3g on 15/10/7.
//  Copyright © 2015年 organazation. All rights reserved.
//

#import "LawyerVC.h"
#import "IconCell.h"

@interface LawyerVC ()

@end

@implementation LawyerVC

static NSString *aboutWeCell = @"aboutWeCell";
static NSString *lawyerCell = @"lawyerCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //注册aboutWeCell
    [self.tableView registerNib:[UINib nibWithNibName:@"IconCell" bundle:nil] forCellReuseIdentifier:aboutWeCell];
    //注册lawyerCell
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:lawyerCell];
    
    //去除分界线
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.section == 0) {
        IconCell *cell = [tableView dequeueReusableCellWithIdentifier:aboutWeCell forIndexPath:indexPath];
        return cell;
    }else{
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:lawyerCell forIndexPath:indexPath];
        cell.textLabel.numberOfLines = 0;
        cell.textLabel.text = @"口袋医药所提供的药品说明信息,仅供参考,具体用药请仔细查看药品说明书原件或者遵照医生诊疗意见.我们对参照本软件用药造成的一切后果不负有任何法律或相关的责任!";
        return cell;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.section == 0) {
        return 216;
    }else{
        return 200;
    }
}


@end
