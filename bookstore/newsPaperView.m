//
//  newsPaperView.m
//  bookstore
//
//  Created by Herman Tolle on 7/16/14.
//  Copyright (c) 2014 Lab. All rights reserved.
//

#import "newsPaperView.h"

#import "detailNewsPaper.h"
#import "SWRevealViewController.h"

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
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    // Do any additional setup after loading the view.
    
    
    UIButton * menuNav= [UIButton buttonWithType:UIButtonTypeCustom];
    
    [menuNav setFrame:CGRectMake(1, 0, 20, 20)];
    [menuNav setImage:[UIImage imageNamed:@"ic_menu_alt.png"]forState:UIControlStateNormal];
    [menuNav addTarget:self.revealViewController
                action:@selector(revealToggle:)
      forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *menuButton  = [[UIBarButtonItem alloc] initWithCustomView:menuNav];
    self.navigationItem.leftBarButtonItem = menuButton;
    
    UIButton * folderNav= [UIButton buttonWithType:UIButtonTypeCustom];
    
    [folderNav setFrame:CGRectMake(1, 0, 25, 25)];
    [folderNav setImage:[UIImage imageNamed:@"ic_folder_alt.png"]forState:UIControlStateNormal];
    [folderNav addTarget:self.revealViewController
                  action:@selector(revealToggle:)
        forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *folderButton  = [[UIBarButtonItem alloc] initWithCustomView:folderNav];
    self.navigationItem.rightBarButtonItem = folderButton;
    
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
