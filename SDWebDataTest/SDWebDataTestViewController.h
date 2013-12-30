//
//  SDWebDataTestViewController.h
//  SDWebDataTest
//
//  Created by wayne li on 11-8-17.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SDWebDataTestViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>{
    NSArray *_images;
}

@property (nonatomic, retain) UITableView *tableView;

- (void) initImageArray;

@end
