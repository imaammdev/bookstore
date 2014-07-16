//
//  newsPaperView.m
//  bookstore
//
//  Created by Herman Tolle on 7/16/14.
//  Copyright (c) 2014 Lab. All rights reserved.
//

#import "newsPaperView.h"

#import "detailNewsPaper.h"

@interface newsPaperView ()

@end

@implementation newsPaperView{
    NSMutableArray *edisi;
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    edisi = [[NSMutableArray alloc] init];
    [edisi addObject:@"kamis"];
    [edisi addObject:@"jumat"];

}



#pragma mark metode untuk source newspaper

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [edisi count];
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    newsPaperCell *cell = (newsPaperCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"newsPaperCell" forIndexPath:indexPath];
    cell.edisi.text = [NSString stringWithFormat:@"%@", [edisi objectAtIndex:indexPath.row]];
                                            
    return cell;
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    UICollectionViewCell *cell = (UICollectionViewCell *)sender;
    NSIndexPath *indexPath = [self.collectionView indexPathForCell:cell];
    
    detailNewsPaper *detailNews = (detailNewsPaper *)segue.destinationViewController;
    
    detailNews.judulvar = [NSString stringWithFormat:@"%@", [edisi objectAtIndex:indexPath.row] ];
    
    
    
    
}

@end
