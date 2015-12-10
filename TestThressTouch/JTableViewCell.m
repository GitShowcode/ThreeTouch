//
//  JTableViewCell.m
//  TestThressTouch
//
//  Created by jiapeixin on 15/10/8.
//  Copyright © 2015年 Gencare_Jia. All rights reserved.
//

#import "JTableViewCell.h"
#import "CLColorMacro.h"
#import "LLColor.h"
@implementation JTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
    
        self.newcontIMG=[[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 60, 60)];
        [self.newcontIMG setClipsToBounds:YES];
        self.newcontIMG.contentMode=UIViewContentModeScaleAspectFill;
        [self.contentView addSubview:self.newcontIMG];
        
        
        self.mylabel=[[UILabel alloc] initWithFrame:CGRectMake(100, 20, SCREEN_WIDTH-120, 40)];
        self.mylabel.textAlignment=NSTextAlignmentCenter;
        [self.contentView addSubview:self.mylabel];
        self.mylabel.textColor=colorRGBA4;
     
        self.lineview=[UIView new];
        self.lineview.backgroundColor=colorRGBA3;
        self.lineview.frame=CGRectMake(90, 59.5, SCREEN_WIDTH-95, .5);
        [self.contentView  addSubview:self.lineview];
        
        
    }
    
    
    return self;
    
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
