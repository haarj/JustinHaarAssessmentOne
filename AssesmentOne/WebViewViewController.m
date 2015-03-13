//
//  WebViewViewController.m
//  AssesmentOne
//
//  Created by Justin Haar on 3/13/15.
//  Copyright (c) 2015 Justin Haar. All rights reserved.
//

#import "WebViewViewController.h"


@interface WebViewViewController () <UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *webView;

@property (weak, nonatomic) IBOutlet UINavigationItem *webViewTitle;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;
@end

@implementation WebViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.webView.delegate = self;
    [self performLoadRequestWithString:@"http://www.mobilemakers.co"];
    self.activityIndicator.hidesWhenStopped = YES;
    self.webViewTitle.title = [NSString stringWithFormat:@"%i", self.answer];
}
-(void)webViewDidStartLoad:(UIWebView *)webView
{
    [self.activityIndicator startAnimating];
}

-(void)webViewDidFinishLoad:(UIWebView *)webView
{
    [self.activityIndicator stopAnimating];
}

-(void)performLoadRequestWithString:(NSString *)string
{
    NSURL *url = [NSURL URLWithString:string];
    NSURLRequest *request = [NSURLRequest requestWithURL: url];
    [self.webView loadRequest:request];
}
@end
