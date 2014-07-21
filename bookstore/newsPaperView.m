//
//  magazineView.m
//  bookstore
//
//  Created by Herman Tolle on 7/14/14.
//  Copyright (c) 2014 Lab. All rights reserved.
//

#import "newsPaperView.h"
#import "detailNewsPaper.h"
#import "SWRevealViewController.h"

@interface newsPaperView ()

@end

@implementation newsPaperView{
    NSMutableArray *penerbit;
    NSMutableArray *judul;
    NSInteger selectedjudul;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
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
    [folderNav addTarget:self.revealViewController action:@selector(revealToggle:) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *folderButton  = [[UIBarButtonItem alloc] initWithCustomView:folderNav];
    self.navigationItem.rightBarButtonItem = folderButton;
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    
    
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


#pragma mark collectionView source

-(NSInteger) numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return [penerbit count];
}



- (UICollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    newsPaperCell *cell = (newsPaperCell *)[cv dequeueReusableCellWithReuseIdentifier:@"newsPaperCell" forIndexPath:indexPath];
    
    
    cell.penerbitNewsPaper.text = [NSString stringWithFormat:@"%@",[penerbit objectAtIndex:indexPath.row]];
    cell.judulNewsPaper.text = [NSString stringWithFormat:@"%@", [judul objectAtIndex:indexPath.row]];
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    UICollectionViewCell *cell = (UICollectionViewCell *)sender;
    NSIndexPath *indexPath = [self.collectionView indexPathForCell:cell];
    
    detailNewsPaper *detailNews = (detailNewsPaper *)segue.destinationViewController;
    detailNews.judulvar = [judul objectAtIndex:indexPath.row];
    
    
    
}







@end
