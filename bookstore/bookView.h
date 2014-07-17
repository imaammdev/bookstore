//
//  bookView.h
//  bookstore
//
//  Created by Herman Tolle on 7/16/14.
//  Copyright (c) 2014 Lab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface bookView : UIViewController <UICollectionViewDelegate, UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;


@end
