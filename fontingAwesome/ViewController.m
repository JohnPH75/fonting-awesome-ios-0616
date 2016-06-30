//
//  ViewController.m
//  fontingAwesome
//
//  Created by John Hussain on 6/30/16.
//  Copyright © 2016 John Hussain. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *fontAwesomebutton;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *buttonTapped;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    FAKFontAwesome *starIcon = [FAKFontAwesome starIconWithSize:25];
    
    [starIcon addAttribute:NSForegroundColorAttributeName value:[UIColor blackColor]];
    NSAttributedString *starAttributed = [starIcon attributedString];
    
    [self.fontAwesomebutton setAttributedTitle:starAttributed forState:
     UIControlStateNormal];
}

- (IBAction)buttonTapped:(id)sender {
    
    
    FAKZocial *twitterIcon = [FAKZocial twitterIconWithSize:25];
    
    [twitterIcon addAttribute:NSForegroundColorAttributeName value:[UIColor redColor]];
    
    NSAttributedString *twitterAttributed = [twitterIcon attributedString];
    
    [self.fontAwesomebutton setAttributedTitle:twitterAttributed forState:
     UIControlStateNormal];
    
    CWStatusBarNotification *notification = [CWStatusBarNotification new];
    
    [notification displayNotificationWithMessage:@"Font Awesome Button"
                                          forDuration:3.0f];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
