//
//  MainVC.m
//  bookstore
//
//  Created by Mabook Pro on 7/17/14.
//  Copyright (c) 2014 Lab. All rights reserved.
//

#import "MainVC.h"

@interface MainVC ()

@end

@implementation MainVC


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (NSString *)segueIdentifierForIndexPathInLeftMenu:(NSIndexPath *)indexPath
{
    NSString *identifier;
    switch (indexPath.row) {
        case 0:
            identifier = @"firstSegue";
            break;
        case 1:
            identifier = @"secondSegue";
            break;
    }
    return identifier;
}



@end
