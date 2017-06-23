//
//  ViewController.m
//  UIButtonTest
//
//  Created by pengjiaxin on 16/10/18.
//  Copyright © 2016年 pengjiaxin. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource,CustomSwitchDelegate>

@property (nonatomic, strong) UITableView *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    
    
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 15;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellID = @"Cell";
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        cell = [[TableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
        
    }
    
    cell.switchOne.delegate = self;

//    cell.switchOne.onImage = [UIImage imageNamed:@"switch_bg"];
//    cell.switchOne.offImage = [UIImage imageNamed:@"switch_seleced_bg"];
    
    cell.switchOne.onImage = [UIImage imageNamed:@"switchOne_on"];
    cell.switchOne.offImage = [UIImage imageNamed:@"switchOne_off"];
    
    return cell;
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}

#pragma mark - customSwitch delegate
-(void)customSwitchSetStatus:(CustomSwitchStatus)status
{
    switch (status) {
        case CustomSwitchStatusOn:
            //todo
            break;
        case CustomSwitchStatusOff:
            //todo
            break;
        default:
            break;
    }
}

-(void)customSwitchSetStatus:(CustomSwitchStatus)status oneSwitch:(id)currentSwitch{
    switch (status) {
        case CustomSwitchStatusOn:
            //todo
            break;
        case CustomSwitchStatusOff:
            //todo
            break;
        default:
            break;
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
