//
//  TableViewCell.m
//  UIButtonTest
//
//  Created by pengjiaxin on 16/10/18.
//  Copyright © 2016年 pengjiaxin. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self createUI];
    }
    return self;
}
-(void)createUI{
    self.switchOne = [[CustomSwitch alloc]init];
    _switchOne.backgroundColor = [UIColor clearColor];
    _switchOne.frame = CGRectMake(100, 0, 100, 50);
    [self.contentView addSubview:_switchOne];
    

}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
