//
//  CustomCell.m
//  SDWebDataTest
//
//  Created by wayne li on 11-8-19.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "CustomCell.h"

@implementation CustomCell
@synthesize imgView=_imgView;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _imgView=[[UIImageView alloc] initWithFrame:CGRectMake(20, 2, 80, 60)];
        [self addSubview:_imgView];
        [_imgView release];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
