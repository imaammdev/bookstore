//
//  bookView.m
//  bookstore
//
//  Created by Mabook Pro on 7/15/14.
//  Copyright (c) 2014 Lab. All rights reserved.
//

#import "newsView.h"

@interface newsView ()

@end

@implementation bookView {
    NSMutableArray *penerbit;
    NSMutableArray *judul;
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
    UIImageView *iconMenu = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"ic_menu_alt.png"]];
    iconMenu.frame = CGRectMake(1, 0, 20, 20);
    
    UIImageView *iconLibrary = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"ic_folder_alt.png"]];
    iconLibrary.frame = CGRectMake(1, 0, 25, 25);
    
    UIBarButtonItem *listMenu = [[UIBarButtonItem alloc] initWithCustomView:iconMenu];
    UIBarButtonItem *libraryButton = [[UIBarButtonItem alloc] initWithCustomView:iconLibrary];
    
    self.navigationItem.leftBarButtonItem = listMenu;
    self.navigationItem.rightBarButtonItem = libraryButton;
    
    penerbit = [[NSMutableArray alloc] init];
    [penerbit addObject:@"Majalah Detik"];
    [penerbit addObject:@"Majalah Kompas tv"];
    [penerbit addObject:@"Majalah Surya"];
    
    [penerbit addObject:@"Majalah Geny"];
    [penerbit addObject:@"Majalah Satu"];
    [penerbit addObject:@"Majalah Dua"];
    
    judul = [[NSMutableArray alloc] init];
    [judul addObject:@"Jodoh Prabowo"];
    [judul addObject:@"Jodoh Jokowi"];;
    [judul addObject:@"Bukan Saya"];
    
    [judul addObject:@"Saya Bukan"];
    [judul addObject:@"Ini Judul"];
    [judul addObject:@"ini magazine"];
    
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

#pragma mark - Data source buat collectionView

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [penerbit count];
}



- (UICollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    bookCell *cell = (bookCell*)[cv dequeueReusableCellWithReuseIdentifier:@"bookCell" forIndexPath:indexPath];
    cell.penerbitBook.text = [NSString stringWithFormat:@"%@",[penerbit objectAtIndex:indexPath.row]];
    cell.judulBook.text = [NSString stringWithFormat:@"%@", [judul objectAtIndex:indexPath.row]];
    return cell;
    
}


@end
