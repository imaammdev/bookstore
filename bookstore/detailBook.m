//
//  detailMagazine.m
//  bookstore
//
//  Created by Herman Tolle on 7/15/14.
//  Copyright (c) 2014 Lab. All rights reserved.
//

#import "detailBook.h"
#import "bookCell.h"

@interface detailBook ()

@end

@implementation detailBook{
    NSMutableArray *penerbit;
    NSMutableArray *judul;
    NSInteger selectedjudul;
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
    
    UIButton * button= [UIButton buttonWithType:UIButtonTypeCustom];
    
    [button setFrame:CGRectMake(1, 0, 20, 20)];
    [button setImage:[UIImage imageNamed:@"ic_menu_alt.png"]forState:UIControlStateNormal];
    [button addTarget:self
               action:@selector(handleBack:)
     forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *barButton  = [[UIBarButtonItem alloc] initWithCustomView:button];
    self.navigationItem.leftBarButtonItem = barButton;
    
    self.authorBook.text = self.detailJudul;
    
    
    penerbit = [[NSMutableArray alloc] init];
    [penerbit addObject:@"Majalah Detik"];
    [penerbit addObject:@"Majalah Kompas tv"];
    [penerbit addObject:@"Majalah Surya"];
    
    [penerbit addObject:@"Majalah Geny"];
    [penerbit addObject:@"Majalah Satu"];
    [penerbit addObject:@"Majalah Dua"];
    [penerbit addObject:@"coba"];
    
    judul = [[NSMutableArray alloc] init];
    [judul addObject:@"Jodoh Prabowo"];
    [judul addObject:@"Jodoh Jokowi"];;
    [judul addObject:@"Bukan Saya"];
    
    [judul addObject:@"Saya Bukan"];
    [judul addObject:@"Ini Judul"];
    [judul addObject:@"ini magazine"];
    [judul addObject:@"ini coba"];
    
    
    
    
}

-(void)handleBack:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
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
    
    bookCell *cell = (bookCell*)[cv dequeueReusableCellWithReuseIdentifier:@"bookCell" forIndexPath:indexPath];
    
    
    cell.penerbitBook.text = [NSString stringWithFormat:@"%@",[penerbit objectAtIndex:indexPath.row]];
    cell.judulBook.text = [NSString stringWithFormat:@"%@", [judul objectAtIndex:indexPath.row]];
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    UICollectionViewCell *cell = (UICollectionViewCell *)sender;
    NSIndexPath *indexPath = [self.collectionView indexPathForCell:cell];
    
    detailBook *detailBo = (detailBook *)segue.destinationViewController;
    detailBo.detailJudul = [judul objectAtIndex:indexPath.row];
    
    
    
}



@end
