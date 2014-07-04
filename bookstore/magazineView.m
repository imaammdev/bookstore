//
//  magazineView.m
//  bookstore
//
//  Created by Herman Tolle on 7/4/14.
//  Copyright (c) 2014 Lab. All rights reserved.
//

#import "magazineView.h"

@interface magazineView ()

@property (nonatomic) BOOL cellColor;
@end

@implementation magazineView

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 50;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"coloredCell" forIndexPath:indexPath];
    
    return cell;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
