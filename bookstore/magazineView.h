//
//  magazineView.h
//  bookstore
//
//  Created by Herman Tolle on 7/14/14.
//  Copyright (c) 2014 Lab. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "magazineCell.h"

@interface magazineView : UIViewController <UICollectionViewDataSource , UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end
