//
//  SDWebDataTestAppDelegate.h
//  SDWebDataTest
//
//  Created by wayne li on 11-8-17.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SDWebDataTestViewController;

@interface SDWebDataTestAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet SDWebDataTestViewController *viewController;

@end
