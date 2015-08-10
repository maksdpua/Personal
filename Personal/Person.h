//
//  Person.h
//  Personal
//
//  Created by Maks on 7/29/15.
//  Copyright (c) 2015 Maks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MySingleton.h"

@interface Person : NSObject

@property NSString *fullName;
@property NSNumber *age;
@property NSString *position;
@property NSString *department;
@property (nonatomic)  UIImage *photo;

@end
