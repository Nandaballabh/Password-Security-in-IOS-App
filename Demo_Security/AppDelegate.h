//
//  AppDelegate.h
//  Demo_Security
//
//  Created by Nanda Ballabh on 29/10/13.
//  Copyright (c) 2013 nanda. All rights reserved.
//

#import <UIKit/UIKit.h>

// Used for saving to NSUserDefaults that a PIN has been set and as the unique identifier for the Keychain
#define IsPinSaved @"nanda.PasswordDemo"// it is a identifier 

// Used for saving the users name to NSUserDefaults
#define UserName @"username"

// Used to specify the Application used in Keychain accessing
#define AppName [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleIdentifier"]

// Used to help secure the PIN
// Ideally, this is randomly generated, but to avoid unneccessary complexity and overhead of storing the Salt seperately we will standardize on this key.
// !!KEEP IT A SECRET!!

#define SALT_HASH @"FvTivqTqZXsgLLx1v3P8TGRyVHaSOB1pvfm02wvGadj7RLHV8GrfxaZ84oGA8RsKdNRpxdAojXYg9iAj"

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UINavigationController *navigation;

@end
