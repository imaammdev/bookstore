//
//  magazineView.m
//  bookstore
//
//  Created by Herman Tolle on 7/14/14.
//  Copyright (c) 2014 Lab. All rights reserved.
//

#import "magazineView.h"
#import "detailMagazine.h"

@interface magazineView ()

@end

@implementation magazineView{
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




#pragma mark collectionView source

-(NSInteger) numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return [penerbit count];
}



- (UICollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    magazineCell *cell = (magazineCell*)[cv dequeueReusableCellWithReuseIdentifier:@"magazineCell" forIndexPath:indexPath];
    cell.penerbitMagazine.text = [NSString stringWithFormat:@"%@",[penerbit objectAtIndex:indexPath.row]];
    cell.judulMagazine.text = [NSString stringWithFormat:@"%@", [judul objectAtIndex:indexPath.row]];
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    UICollectionViewCell *cell = (UICollectionViewCell *)sender;
    NSIndexPath *indexPath = [self.collectionView indexPathForCell:cell];
    
    detailMagazine *detailMagaz = (detailMagazine *)segue.destinationViewController;
    detailMagaz.detailJudul = [judul objectAtIndex:indexPath.row];
    
}







@end
