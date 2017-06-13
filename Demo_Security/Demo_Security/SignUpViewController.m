//
//  SignUpViewController.m
//  Demo_Security
//
//  Created by Nanda Ballabh on 20/11/13.
//  Copyright (c) 2013 nanda. All rights reserved.
//

#import "SignUpViewController.h"
#import "LoginViewController.h"

@interface SignUpViewController ()

@end

@implementation SignUpViewController


- (IBAction)signUp:(id)sender {
    if(![self.sPassword.text isEqualToString:self.cPassword.text]) {
        [[[UIAlertView alloc]initWithTitle:@"Error!" message:@"Password does not matched" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil]show];
        return;
    }
    NSUInteger fieldHash = [self.sPassword.text hash];
    NSString *fieldString = [NKeychainWrapper securedSHA256DigestHashForPIN:fieldHash];
    NSLog(@"** Password Hash - %@", fieldString);
    // Save PIN hash to the keychain (NEVER store the direct PIN)
    if ([NKeychainWrapper createKeychainValue:fieldString forIdentifier:IsPinSaved]) {
        [[NSUserDefaults standardUserDefaults] setObject:self.email.text forKey:UserName];
        [[NSUserDefaults standardUserDefaults] setBool:YES forKey:IsPinSaved];
        [[NSUserDefaults standardUserDefaults] synchronize];
        NSLog(@"** Key saved successfully to Keychain!!");
        [self.navigationController popToRootViewControllerAnimated:YES];
    }
}
-(IBAction)dismissKeyboard :(id)sender
{
    [self.cPassword resignFirstResponder];
    [self.sPassword resignFirstResponder];
    [self.sUserName resignFirstResponder];
    [self.email resignFirstResponder];

}
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.edgesForExtendedLayout = UIRectEdgeNone;
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
