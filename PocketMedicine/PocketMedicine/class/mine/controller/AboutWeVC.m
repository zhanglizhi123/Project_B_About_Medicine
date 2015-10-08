//
//  AboutWeVC.m
//  PocketMedicine
//
//  Created by lanou3g on 15/10/7.
//  Copyright © 2015年 organazation. All rights reserved.
//

#import "AboutWeVC.h"
#import "IconCell.h"
#import "AboutWeBottomCell.h"

@interface AboutWeVC ()

@end

@implementation AboutWeVC

static NSString *aboutWeCell = @"aboutWeCell";
static NSString *aboutWeCell2 = @"aboutWeCell2";

- (void)viewDidLoad {
    [super viewDidLoad];

    //注册aboutWeCell
    [self.tableView registerNib:[UINib nibWithNibName:@"IconCell" bundle:nil] forCellReuseIdentifier:aboutWeCell];
    //注册aboutWeCell2
    [self.tableView registerNib:[UINib nibWithNibName:@"AboutWeBottomCell" bundle:nil] forCellReuseIdentifier:aboutWeCell2];
    
    //去除分界线
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    //navigationItem
    self.navigationItem.title = @"法律声明";

}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    if (section == 0) {
        return 1;
    }else{
        return 3;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.section == 0) {
        IconCell *cell = [tableView dequeueReusableCellWithIdentifier:aboutWeCell forIndexPath:indexPath];
        return cell;
    }else{
        AboutWeBottomCell *cell = [tableView dequeueReusableCellWithIdentifier:aboutWeCell2 forIndexPath:indexPath];
        
        if (indexPath.row == 0) {
            
            cell.nameLabel.text = @"版本更新";
            cell.descriptionLabel.text = @"已是最新版本";
            
        }else if(indexPath.row == 1){
            
            cell.nameLabel.text = @"QQ用户群";
            cell.descriptionLabel.text = @"1948982208";
            
        }else{
            
            cell.nameLabel.text = @"客服电话";
            cell.descriptionLabel.text = @"400-031-9766";
            
        }
        
        return cell;
    }

}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.section == 0) {
        return 216;
    }else{
        return 40;
    }
}


@end








