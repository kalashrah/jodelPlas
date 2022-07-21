//
//  k10Cell.m
//  jdelet
//
//  Created by macbook on 22/12/1443 AH.
//

#import "k10Cell.h"

@implementation k10Cell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(void)layoutSubviews{
    self.headerLable = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    
    [self addSubview:self.headerLable];
}

@end
