//
//  magazineCell.h
//  bookstore
//
//  Created by Herman Tolle on 7/14/14.
//  Copyright (c) 2014 Lab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface bookCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *coverBook;
@property (weak, nonatomic) IBOutlet UILabel *judulBook;


@property (weak, nonatomic) IBOutlet UILabel *penerbitBook;
@property (weak, nonatomic) IBOutlet UILabel *edisiBook;
@property (weak, nonatomic) IBOutlet UILabel *hargaBook;

@end
