//
//  VC2.h
//  Personal
//
//  Created by Maks on 7/30/15.
//  Copyright © 2015 Maks. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"

@interface VC2 : UIViewController

@property (nonatomic, strong) IBOutlet UIImageView *photoOfPerson;
@property (nonatomic, strong) IBOutlet UILabel *fullNameLabel;

@property (nonatomic, readwrite) Person *personOfArray;

@end
