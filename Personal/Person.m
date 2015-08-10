//
//  Person.m
//  Personal
//
//  Created by Maks on 7/29/15.
//  Copyright (c) 2015 Maks. All rights reserved.
//

#import "Person.h"

@implementation Person

- (id)initWithCoder:(NSCoder *)decoder
{
    if (self=[super init])
    {
        self.fullName = [decoder decodeObjectForKey:@"fullName"];
        self.age = [decoder decodeObjectForKey:@"age"];
        self.position = [decoder decodeObjectForKey:@"position"];
        self.department = [decoder decodeObjectForKey:@"department"];
        self.photo = [decoder decodeObjectForKey:@"photo"];
    }
    return self;
}

-(void)encodeWithCoder:(NSCoder *)encoder
{
    [encoder encodeObject:self.fullName forKey:@"fullName"];
    [encoder encodeObject:self.fullName forKey:@"age"];
    [encoder encodeObject:self.fullName forKey:@"posittion"];
    [encoder encodeObject:self.fullName forKey:@"department"];
    [encoder encodeObject:self.fullName forKey:@"photo"];
}

@end
