//
//  VC2.m
//  Personal
//
//  Created by Maks on 7/30/15.
//  Copyright © 2015 Maks. All rights reserved.
//

#import "VC2.h"
#import "SaveMyData.h"
#import "Person.h"

@interface VC2 ()

@end

@implementation VC2

- (void)viewDidLoad
{
    [super viewDidLoad];
    if ([SaveMyData loadWithKey:@"person"]!=nil)
    {
        [MySingleton shared].sharedArray = [SaveMyData loadWithKey:@"person"];
    }
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(saveVC2)];
    self.fullNameLabel.text = self.personOfArray.fullName;
}

- (void)saveVC2
{
    
}

@end
