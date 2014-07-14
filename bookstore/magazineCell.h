//
//  magazineCell.h
//  bookstore
//
//  Created by Herman Tolle on 7/14/14.
//  Copyright (c) 2014 Lab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface magazineCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *coverMagazine;

@property (weak, nonatomic) IBOutlet UILabel *penerbitMagazine;
@property (weak, nonatomic) IBOutlet UILabel *edisiMagazine;
@property (weak, nonatomic) IBOutlet UILabel *judulMagazine;
@property (weak, nonatomic) IBOutlet UILabel *hargaMagazine;

@end
