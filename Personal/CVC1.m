//
//  CVC1.m
//  Personal
//
//  Created by Maks on 7/27/15.
//  Copyright (c) 2015 Maks. All rights reserved.
//

#import "CVC1.h"

@interface CVC1 ()

@end

@implementation CVC1
{
}

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad
{
    [super viewDidLoad];
    if ([SaveMyData loadWithKey:@"person"]!=nil)
    {
        [MySingleton shared].sharedArray = [SaveMyData loadWithKey:@"person"];
    }
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addNewPerson)];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(save)];
    
    
    
//    UIImage *image = [UIImage imageNamed:@"no-user.png"];
//    UIImage *mask = [UIImage imageNamed:@"circle 3.png"];
//    UIImage *maskedImage = [self maskImage: image withMask:mask];
//    [roundImageView setImage:maskedImage];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    //[self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
//    self.collectionView.allowsMultipleSelection = YES;//мультивыделение
    // Do any additional setup after loading the view.
//    if ([Person sharedPerson].sharedArray==nil)
//    {
//        [Person sharedPerson].sharedArray = [NSMutableArray new];
//        for (int i = 0; i < 5; ++i)
//        {
//            Person *newclass = [Person new];
//            newclass.fullName = [NSString stringWithFormat:@"name %i", i];
//            
//            [[MySingleton shared].sharedArray addObject:newclass];
//        }
//    }
}

- (void) addNewPerson
{
    NSLog(@"OK OK");
}

- (void)editPerson
{
    
}

- (void)save
{
    [SaveMyData saveMyArray:[MySingleton shared].sharedArray forKey:@"person"];
    
}


#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [MySingleton shared].sharedArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CVCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    Person *person = [[MySingleton shared].sharedArray objectAtIndex:indexPath.row];
    cell.nameOfPersonal.text = person.fullName;

    return cell;
}

#pragma mark <UICollectionViewDelegate>
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    VC2 *vc2 = [self.storyboard instantiateViewControllerWithIdentifier:@"VC2"];
    vc2.personOfArray = [[MySingleton shared].sharedArray objectAtIndex:indexPath.row];
    [self presentViewController:vc2 animated:YES completion:nil];
    
}

- (void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath
{
    
}

- (void)collectionView:(UICollectionView *)collectionView didHighlightItemAtIndexPath:(NSIndexPath *)indexPath
{
    
}

- (void)collectionView:(UICollectionView *)collectionView didUnhighlightItemAtIndexPath:(NSIndexPath *)indexPath
{
    
}

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
