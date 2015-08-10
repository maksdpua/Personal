//
//  CVCell.m
//  Personal
//
//  Created by Maks on 7/27/15.
//  Copyright (c) 2015 Maks. All rights reserved.
//

#import "CVCell.h"

@implementation CVCell

- (void) awakeFromNib
{
    //background color
    UIView *bgView = [[UIView alloc]initWithFrame:self.bounds];
    self.backgroundView = bgView;
    self.backgroundView.backgroundColor = [UIColor whiteColor];
    //selected
    UIView *selectedView = [[UIView alloc]initWithFrame:self.bounds];
    self.selectedBackgroundView = selectedView;
    self.selectedBackgroundView.backgroundColor = [UIColor lightGrayColor];
}

@end
