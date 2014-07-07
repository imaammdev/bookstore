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
    UIImageView *iconMenu = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"ic_menu_alt.png"]];
    iconMenu.frame = CGRectMake(1, 0, 20, 20);
    
    UIImageView *iconLibrary = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"ic_folder_alt.png"]];
    iconLibrary.frame = CGRectMake(1, 0, 25, 25);
    
    UIBarButtonItem *listMenu = [[UIBarButtonItem alloc] initWithCustomView:iconMenu];
    UIBarButtonItem *libraryButton = [[UIBarButtonItem alloc] initWithCustomView:iconLibrary];
    
    self.navigationItem.leftBarButtonItem = listMenu;
    self.navigationItem.rightBarButtonItem = libraryButton;
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 12;
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
