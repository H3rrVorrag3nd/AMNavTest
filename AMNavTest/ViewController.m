//
//  ViewController.m
//  AMNavTest
//
//  Created by Hannes Lauritzen on 07.06.15.
//  Copyright (c) 2015 PureDesignz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    

    [self.navigationController.navigationBar setBarTintColor:[UIColor blueColor]];
    
    webView.scrollView.delegate = self;
    webView.scrollView.bounces = NO;
    
    [self followScrollView:webView usingTopConstraint:self.topConstraint];
    
    
    
    
    NSMutableURLRequest* nsrequest = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:@"https://github.com/andreamazz/AMScrollingNavbar"] cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:20.0];
    
    
    [webView loadRequest:nsrequest];
   

}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [self showNavBarAnimated:NO];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    [self stopFollowingScrollView];
}

@end
