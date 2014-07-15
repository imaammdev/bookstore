//
//  detailMagazine.m
//  bookstore
//
//  Created by Herman Tolle on 7/15/14.
//  Copyright (c) 2014 Lab. All rights reserved.
//

#import "detailMagazine.h"

@interface detailMagazine ()

@end

@implementation detailMagazine

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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
