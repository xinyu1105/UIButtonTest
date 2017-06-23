//
//  TableViewCell.h
//  UIButtonTest
//
//  Created by pengjiaxin on 16/10/18.
//  Copyright © 2016年 pengjiaxin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomSwitch.h"
@interface TableViewCell : UITableViewCell
@property (nonatomic, retain)  UILabel *reminderLable;
@property (nonatomic, retain)  UILabel *reminderLab;
@property (nonatomic, retain)  CustomSwitch *switchOne;
@property (nonatomic, strong) UIButton *button;

@end
