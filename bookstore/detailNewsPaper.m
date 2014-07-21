//
//  detailNewsPaper.m
//  bookstore
//
//  Created by Herman Tolle on 7/16/14.
//  Copyright (c) 2014 Lab. All rights reserved.
//

#import "detailNewsPaper.h"

@interface detailNewsPaper ()

@end

@implementation detailNewsPaper



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
   
    self.judul.text = self.judulvar;
}

-(void)handleBack:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}


@end
