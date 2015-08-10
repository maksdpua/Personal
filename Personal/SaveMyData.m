//
//  SaveMyData.m
//  Personal
//
//  Created by Maks on 7/29/15.
//  Copyright (c) 2015 Maks. All rights reserved.
//

#import "SaveMyData.h"

@implementation SaveMyData

+ (void)saveMyArray: (NSMutableArray *)array forKey:(NSString *)key
{
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:array];
    
    [[NSUserDefaults standardUserDefaults]setObject:data forKey:key];
    [[NSUserDefaults standardUserDefaults]synchronize];
}

+ (void)saveMyImage: (UIImage *)image forKey:(NSString *)key
{
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:image];
    
    [[NSUserDefaults standardUserDefaults]setObject:data forKey:key];
    [[NSUserDefaults standardUserDefaults]synchronize];
}

+ (NSMutableArray *)loadWithKey: (NSString *)key
{
    NSUserDefaults *defaultClass = [NSUserDefaults standardUserDefaults];
    NSData *data = [defaultClass objectForKey:key];
    return [NSKeyedUnarchiver unarchiveObjectWithData:data];
}

@end
