//
//  bookView.m
//  bookstore
//
//  Created by Herman Tolle on 7/16/14.
//  Copyright (c) 2014 Lab. All rights reserved.
//

#import "bookView.h"
#import "bookCell.h"
#import "SWRevealViewController.h"

@interface bookView ()

@end

@implementation bookView



- (void)viewDidLoad
{
    [super viewDidLoad];

    
    
    UIButton * menuNav= [UIButton buttonWithType:UIButtonTypeCustom];
    
    [menuNav setFrame:CGRectMake(1, 0, 20, 20)];
    [menuNav setImage:[UIImage imageNamed:@"ic_menu_alt.png"]forState:UIControlStateNormal];
    [menuNav addTarget:self.revealViewController
               action:@selector(revealToggle:)
     forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *menuButton  = [[UIBarButtonItem alloc] initWithCustomView:menuNav];
    self.navigationItem.leftBarButtonItem = menuButton;
    
    UIButton * folderNav= [UIButton buttonWithType:UIButtonTypeCustom];
    
    [folderNav setFrame:CGRectMake(1, 0, 25, 25)];
    [folderNav setImage:[UIImage imageNamed:@"ic_folder_alt.png"]forState:UIControlStateNormal];
    [folderNav addTarget:self.revealViewController
                action:@selector(revealToggle:)
      forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *folderButton  = [[UIBarButtonItem alloc] initWithCustomView:folderNav];
    self.navigationItem.rightBarButtonItem = folderButton;
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
}

#pragma mark data source Book

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 1;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    bookCell *cell = (bookCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"bookCell" forIndexPath:indexPath];
    
    return cell;
}

@end
