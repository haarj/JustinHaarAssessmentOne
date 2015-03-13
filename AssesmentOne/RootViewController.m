//
//  ViewController.m
//  AssesmentOne
//
//  Created by Justin Haar on 3/13/15.
//  Copyright (c) 2015 Justin Haar. All rights reserved.
//

#import "RootViewController.h"
#import "WebViewViewController.h"

@interface RootViewController ()

@property (weak, nonatomic) IBOutlet UITextField *valueOneTextField;
@property (weak, nonatomic) IBOutlet UITextField *valueTwoTextField;
@property (weak, nonatomic) IBOutlet UINavigationItem *titleItem;
@property (weak, nonatomic) IBOutlet UIButton *webViewButton;
@property int numberX;
@property int numberY;
@property float numberA;
@property double numberB;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.webViewButton.enabled = NO;
    self.titleItem.title = @"Answer";
}


- (IBAction)calculateButton:(UIButton *)sender
{
    self.numberX = [self.valueOneTextField.text intValue];
    self.numberY = [self.valueTwoTextField.text intValue];
    NSInteger value = self.numberX * self.numberY;
    [self.titleItem.title intValue];
    self.titleItem.title = [NSString stringWithFormat:@"%li", (long)value];

    if (value / 5 != self.numberA || self.numberB)
    {
        self.webViewButton.enabled = YES;
    } else
    {
        self.webViewButton.enabled = NO;
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton *)sender
{
    WebViewViewController *webViewController = segue.destinationViewController;
    webViewController.answer = self.numberX * self.numberY;
}

@end
