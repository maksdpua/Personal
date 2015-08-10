//
//  CVCell.h
//  Personal
//
//  Created by Maks on 7/27/15.
//  Copyright (c) 2015 Maks. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"
#import "SaveMyData.h"

@interface CVCell : UICollectionViewCell

@property (nonatomic, strong) IBOutlet UIImageView *photoOfPersonal;
@property (nonatomic, strong) IBOutlet UILabel *nameOfPersonal;

@end
