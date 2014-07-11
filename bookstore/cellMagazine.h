//
//  cellMagazine.h
//  bookstore
//
//  Created by Herman Tolle on 7/11/14.
//  Copyright (c) 2014 Lab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface cellMagazine : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *cover;
@property (weak, nonatomic) IBOutlet UILabel *penerbit;
@property (weak, nonatomic) IBOutlet UILabel *edisi;
@property (weak, nonatomic) IBOutlet UILabel *judul;
@property (weak, nonatomic) IBOutlet UILabel *harga;

@end
