//
//  LoginViewController.h
//  Demo_Security
//
//  Created by Nanda Ballabh on 20/11/13.
//  Copyright (c) 2013 nanda. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NKeychainWrapper.h"

@interface LoginViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *userName;
@property (weak, nonatomic) IBOutlet UITextField *password;
@end
