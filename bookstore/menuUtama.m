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
    [[UITabBar appearance] setTintColor:[UIColor colorWithRed:211.0f/255.0f green:236.0f/255.0f blue:246.0f/255.0f alpha:1]];
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys: [UIColor colorWithRed:211.0f/255.0f green:236.0f/255.0f blue:246.0f/255.0f alpha:1], NSForegroundColorAttributeName, nil] forState:UIControlStateSelected];
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor colorWithRed:87.0f/255.0f green:169.0f/255.0f blue:224.0f/255.0f alpha:1], NSForegroundColorAttributeName, nil] forState:UIControlStateNormal];


    UITabBarItem *item0 = [self.tabBar.items objectAtIndex:0];
    UITabBarItem *item1 = [self.tabBar.items objectAtIndex:1];
    UITabBarItem *item2 = [self.tabBar.items objectAtIndex:2];
    UITabBarItem *item3 = [self.tabBar.items objectAtIndex:3];
    
    item0.image = [[UIImage imageNamed:@"ic_book.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    item0.selectedImage = [UIImage imageNamed:@"ic_book_alt.png"];
    
    item1.image = [[UIImage imageNamed:@"ic_magazine.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    item1.selectedImage = [UIImage imageNamed:@"ic_magazine_alt.png"];
    
    item2.image = [[UIImage imageNamed:@"ic_newspaper.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    item2.selectedImage = [UIImage imageNamed:@"ic_newspaper_alt.png"];
    
    item3.image = [[UIImage imageNamed:@"ic_mark.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    item3.selectedImage = [UIImage imageNamed:@"ic_mark_alt.png"];
    
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
