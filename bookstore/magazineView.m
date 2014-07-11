//
//  magazineView.m
//  bookstore
//
//  Created by Herman Tolle on 7/11/14.
//  Copyright (c) 2014 Lab. All rights reserved.
//

#import "magazineView.h"
#import "cellMagazine.h"

@interface magazineView ()

@end

@implementation magazineView

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
    [self.collectionViewMag registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cellMagazine"];
    
    
    
    UICollectionViewFlowLayout *flowLayout = (UICollectionViewFlowLayout *)self.collectionViewMag.collectionViewLayout;
    flowLayout.scrollDirection =  UICollectionViewScrollDirectionHorizontal;
    
    
    
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
 */


- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView*)collectionView {
    // _data is a class member variable that contains one array per section.
    return 2;
}

- (NSInteger)collectionView:(UICollectionView*)collectionView numberOfItemsInSection:(NSInteger)section {
        return [sectionArray count];
}





@end
