//
//  MySingleton.h
//  Personal
//
//  Created by Maks on 7/31/15.
//  Copyright (c) 2015 Maks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SaveMyData.h"

@interface MySingleton : NSObject

@property (nonatomic, strong) NSMutableArray *sharedArray;

+ (MySingleton *)shared;

@end
