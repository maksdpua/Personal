//
//  SaveMyData.h
//  Personal
//
//  Created by Maks on 7/29/15.
//  Copyright (c) 2015 Maks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MySingleton.h"
#import "Person.h"

@interface SaveMyData : NSObject

+ (void)saveMyArray: (NSMutableArray *)array forKey:(NSString *)key;

+ (void)saveMyImage: (UIImage *)image forKey:(NSString *)key;

+ (NSMutableArray *)loadWithKey: (NSString *)key;

@end
