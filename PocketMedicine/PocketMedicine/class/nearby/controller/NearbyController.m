//
//  NearbyController.m
//  PocketMedicine
//
//  Created by lanou3g on 15/10/7.
//  Copyright © 2015年 organazation. All rights reserved.
//

#import "NearbyController.h"
#import "ZLZHelperManager.h"
#import "NearHospitallModel.h"


@interface NearbyController ()<UITableViewDataSource,UITableViewDelegate>
{
    BOOL _isClick;
}
@property (weak, nonatomic) IBOutlet UIButton *areaButton;
@property (strong, nonatomic) IBOutlet UIView *tbMainView;
@property (weak, nonatomic) IBOutlet UITableView *shengTBV;
@property (weak, nonatomic) IBOutlet UITableView *shiTBV;
@property(nonatomic,strong) NSArray *areaArr;

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end



@implementation NearbyController

-(void)viewWillAppear:(BOOL)animated{

    _isClick = YES;
    
    if (_isClick == YES) {
        [self.areaButton setImage:[UIImage imageNamed:@"sanjiaodown"] forState:UIControlStateNormal];
        
        self.tbMainView.hidden =  YES;

        _isClick = NO;
        
    }
    
    NSString*path = [[NSBundle mainBundle]pathForResource:@"area" ofType:@"plist"];
    
      self.areaArr = [[ZLZHelperManager shareAreaManager]getDictWithPath:path];


}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

//    self.shengTBV.dataSource = self;
//    self.shengTBV.delegate = self;
//    
//    self.shiTBV.dataSource = self;
//    self.shiTBV.delegate = self;
//    
//    self.tableView.dataSource = self;
//    self.tableView.delegate = self;



}
- (IBAction)clickButtonWithAreaButton:(UIButton *)sender {
    
        NSLog(@"2....%@",NSStringFromCGRect(self.tbMainView.frame));

    if (_isClick == NO) {
        
        //self.tbMainView.frame = CGRectMake(self.tbMainView.frame.origin.x, self.tbMainView.frame.origin.y, self.tbMainView.frame.size.width, 200);
        self.tbMainView.hidden = _isClick;
        [self.areaButton setImage:[UIImage imageNamed:@"sanjiaoup"] forState:UIControlStateNormal];
        _isClick = YES;
        
    }else{
    
        [self.areaButton setImage:[UIImage imageNamed:@"sanjiaodown"] forState:UIControlStateNormal];
        
       // self.tbMainView.frame = CGRectMake(self.tbMainView.frame.origin.x, self.tbMainView.frame.origin.y, self.tbMainView.frame.size.width, 0);
        self.tbMainView.hidden =  _isClick;
        _isClick = NO;

    }
    NSLog(@"%d",_isClick);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
