//
//  detailMagazine.h
//  bookstore
//
//  Created by Herman Tolle on 7/15/14.
//  Copyright (c) 2014 Lab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface detailBook : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate>

@property (strong, nonatomic) NSString *detailJudul;

@property (weak, nonatomic) IBOutlet UILabel *authorBook;

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;


@end
