//
//  ViewController.m
//  Demo_Security
//
//  Created by Nanda Ballabh on 29/10/13.
//  Copyright (c) 2013 nanda. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "LoginViewController.h"
#import "SignUpViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.edgesForExtendedLayout = UIRectEdgeNone;
	// Do any additional setup after loading the view, typically from a nib.
}
-(IBAction)loginTapped:(id)sender {
    LoginViewController *login = [LoginViewController new];
    [self.navigationController pushViewController:login animated:YES];
}
-(IBAction)signupTapped:(id)sender {
    SignUpViewController *signUp = [SignUpViewController new];
    [self.navigationController pushViewController:signUp animated:YES];
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
