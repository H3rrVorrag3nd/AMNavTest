//
//  ViewController.h
//  AMNavTest
//
//  Created by Hannes Lauritzen on 07.06.15.
//  Copyright (c) 2015 PureDesignz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIViewController+ScrollingNavbar.h"

@interface ViewController : UIViewController<UIWebViewDelegate,UIScrollViewDelegate> {
    IBOutlet UIWebView *webView;
}

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topConstraint;
@end

