//
//  tableViewCell.m
//  sample20141021001
//
//  Created by dev1 on 2014. 10. 24..
//  Copyright (c) 2014년 Chan-yeong, Jeong. All rights reserved.
//

#import "tableViewCell.h"

@implementation tableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
