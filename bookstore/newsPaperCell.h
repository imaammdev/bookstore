//
//  newsPaperCell.h
//  bookstore
//
//  Created by Herman Tolle on 7/16/14.
//  Copyright (c) 2014 Lab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface newsPaperCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *coverNewsPaper;

@property (weak, nonatomic) IBOutlet UILabel *penerbitNewsPaper;
@property (weak, nonatomic) IBOutlet UILabel *edisiNewsPaper;
@property (weak, nonatomic) IBOutlet UILabel *judulNewsPaper;
@property (weak, nonatomic) IBOutlet UILabel *hargaNewsPaper;

@end
