//
//  homeViewController.m
//  bookstore
//
//  Created by Herman Tolle on 7/3/14.
//  Copyright (c) 2014 Lab. All rights reserved.
//

#import "homeViewController.h"

@interface homeViewController ()

@end

@implementation homeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    
    UIImageView *iconMenu = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"ic_menu_alt.png"]];
    iconMenu.frame = CGRectMake(1, 0, 20, 20);
    
    UIImageView *iconLibrary = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"ic_folder_alt.png"]];
    iconLibrary.frame = CGRectMake(1, 0, 25, 25);
    
    UIBarButtonItem *listMenu = [[UIBarButtonItem alloc] initWithCustomView:iconMenu];
    UIBarButtonItem *libraryButton = [[UIBarButtonItem alloc] initWithCustomView:iconLibrary];
    
    self.navigationItem.leftBarButtonItem = listMenu;
    self.navigationItem.rightBarButtonItem = libraryButton;
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

@end
