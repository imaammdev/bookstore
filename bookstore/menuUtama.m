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



- (void)viewDidLoad
{
    [super viewDidLoad];
    [[UITabBar appearance] setTintColor:[UIColor colorWithRed:211.0f/255.0f green:236.0f/255.0f blue:246.0f/255.0f alpha:1]];
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys: [UIColor colorWithRed:211.0f/255.0f green:236.0f/255.0f blue:246.0f/255.0f alpha:1], NSForegroundColorAttributeName, nil] forState:UIControlStateSelected];
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor colorWithRed:87.0f/255.0f green:169.0f/255.0f blue:224.0f/255.0f alpha:1], NSForegroundColorAttributeName, nil] forState:UIControlStateNormal];
    


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
