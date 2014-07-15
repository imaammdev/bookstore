//
//  magazineView.h
//  bookstore
//
//  Created by Herman Tolle on 7/14/14.
//  Copyright (c) 2014 Lab. All rights reserved.
//


#import "magazineCell.h"
#import "AMSlideMenuMainViewController.h"

@interface magazineView : AMSlideMenuMainViewController <UICollectionViewDataSource , UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end
