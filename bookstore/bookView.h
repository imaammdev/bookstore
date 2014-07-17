//
//  bookView.h
//  bookstore
//
//  Created by Mabook Pro on 7/15/14.
//  Copyright (c) 2014 Lab. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "bookCell.h"

@interface bookView : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;


@end
