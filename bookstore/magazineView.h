//
//  magazineView.h
//  bookstore
//
//  Created by Herman Tolle on 7/11/14.
//  Copyright (c) 2014 Lab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface magazineView : UIViewController <UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionViewMag;

@end
