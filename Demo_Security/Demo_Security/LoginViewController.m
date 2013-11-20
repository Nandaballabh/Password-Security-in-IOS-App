//
//  LoginViewController.m
//  Demo_Security
//
//  Created by Nanda Ballabh on 20/11/13.
//  Copyright (c) 2013 nanda. All rights reserved.
//

#import "LoginViewController.h"
#import "WelcomeViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (IBAction)login:(id)sender {
    NSUInteger fieldHash = [self.password.text hash]; // Get the hash of the entered PIN, minimize contact with the real password
    // 3
    BOOL isUserNameValid = [[[NSUserDefaults standardUserDefaults]objectForKey:UserName] isEqualToString:self.userName.text];
    if ([NKeychainWrapper compareKeychainValueForMatchingPIN:fieldHash] && isUserNameValid) { // Compare them
        NSLog(@"** User Authenticated!!");
        WelcomeViewController *welcome = [WelcomeViewController new];
        self.navigationController.viewControllers = @[welcome];
        
    } else {
        NSLog(@"** Wrong Password :(");
        [[[UIAlertView alloc]initWithTitle:@"Error!" message:@"Enter correct details" delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil, nil]show];
    }
}
-(IBAction)dismissKeyboard :(id)sender
{
    [self.password resignFirstResponder];
    [self.userName resignFirstResponder];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(dismissKeyboard:)];
    [self.view addGestureRecognizer:tap];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
