//
//  SignUpViewController.h
//  Demo_Security
//
//  Created by Nanda Ballabh on 20/11/13.
//  Copyright (c) 2013 nanda. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NKeychainWrapper.h"

@interface SignUpViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *sUserName;
@property (weak, nonatomic) IBOutlet UITextField *sPassword;
@property (weak, nonatomic) IBOutlet UITextField *cPassword;
@property (weak, nonatomic) IBOutlet UITextField *email;

@end
