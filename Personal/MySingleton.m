//
//  MySingleton.m
//  Personal
//
//  Created by Maks on 7/31/15.
//  Copyright (c) 2015 Maks. All rights reserved.
//

#import "MySingleton.h"

@implementation MySingleton

static MySingleton * sharedSingleton = nil;


+ (MySingleton *)shared
{
//    if ([SaveMyData loadWithKey:@"person"]!=nil)
//    {
//        [MySingleton shared].sharedArray = [SaveMyData loadWithKey:@"person"];
//    }
    if (!sharedSingleton)
    {
        sharedSingleton = [MySingleton new];
        sharedSingleton.sharedArray = [NSMutableArray new];
    }
    return sharedSingleton;
}


@end
