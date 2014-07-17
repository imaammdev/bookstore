//
//  newsCell.h
//  bookstore
//
//  Created by Mabook Pro on 7/17/14.
//  Copyright (c) 2014 Lab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface newsCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *coverNews;

@property (weak, nonatomic) IBOutlet UILabel *penerbitNews;
@property (weak, nonatomic) IBOutlet UILabel *edisiNews;
@property (weak, nonatomic) IBOutlet UILabel *judulNews;
@property (weak, nonatomic) IBOutlet UILabel *hargaNews;
@end
