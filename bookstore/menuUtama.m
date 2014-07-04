//
//  menuUtama.m
//  bookstore
//
//  Created by Herman Tolle on 7/3/14.
//  Copyright (c) 2014 Lab. All rights reserved.
//

#import "menuUtama.h"

@interface menuUtama ()

@end

@implementation menuUtama

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
    //[[UITabBarItem appearance] setTitleTextAttributes:@{NSFontAttributeName : [UIFont fontWithName:@"HelveticaNeue-Bold" size:10.0f],
    //                                                    NSForegroundColorAttributeName : [UIColor colorWithRed:211.0f/255.0f green:236.0f/255.0f blue:246.0f/255.0f alpha:1]
   //                                                     } forState:UIControlStateSelected];
    
    
    
    //[[UITabBarItem appearance] setTitleTextAttributes:@{NSFontAttributeName : [UIFont fontWithName:@"HelveticaNeue-Bold" size:10.0f],
     //                                                   NSForegroundColorAttributeName : [UIColor colorWithRed:91.0f/255.0f green:170.0f/255.0f blue:222.0f/255.0f alpha:1]
     //                                                   } forState:UIControlStateNormal];
    
    //[[UITabBar appearance] setSelectedImageTintColor:[UIColor colorWithRed:211.0f/255.0f green:236.0f/255.0f blue:246.0f/255.0f alpha:1]];
    
    //[self.tabBarItem setFinishedSelectedImage:[UIImage imageNamed:@"ic_book.png"] withFinishedUnselectedImage:[UIImage imageNamed:@"ic_book_alt.png"]];

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
