//
//  SDWebDataTestViewController.m
//  SDWebDataTest
//
//  Created by wayne li on 11-8-17.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "SDWebDataTestViewController.h"
#import "SDImageView+SDWebCache.h"
#import "CustomCell.h"

@implementation SDWebDataTestViewController
@synthesize tableView;


#pragma mark - View lifecycle

- (void)viewDidLoad{
    [super viewDidLoad];
    [self initImageArray];
    [self.tableView reloadData];
}


- (void) initImageArray {
    if (_images==nil) {
        _images = [[NSArray arrayWithObjects:
                    @"http://farm6.static.flickr.com/5094/5464787611_642ee9280d_m.jpg",
                    @"http://farm5.static.flickr.com/4078/4861715526_6ccb2b9a19_m.jpg",
                    @"http://farm6.static.flickr.com/5143/5643450822_93fe951bd1_m.jpg",
                    @"http://farm6.static.flickr.com/5030/5605213905_a7124c8f23_m.jpg",
                    @"http://farm6.static.flickr.com/5084/5351625889_ecce70eb4a_m.jpg",
                    @"http://farm5.static.flickr.com/4098/4940540425_7d562e1e2d_m.jpg",
                    @"http://farm6.static.flickr.com/5182/5644429692_aa5499bfca_m.jpg",
                    @"http://farm2.static.flickr.com/1077/5101973016_1c1675b17a_m.jpg",
                    @"http://farm4.static.flickr.com/3147/3109786067_9994b32727_m.jpg",
                    @"http://farm6.static.flickr.com/5147/5643154294_fdbc9b249f_m.jpg",
                    @"http://farm6.static.flickr.com/5048/5351303637_2cedcbe403_m.jpg",
                    @"http://farm6.static.flickr.com/5162/5348855106_14ea0da091_m.jpg",
                    @"http://farm6.static.flickr.com/5004/5335600202_be33b46608_m.jpg",
                    @"http://farm6.static.flickr.com/5002/5332760342_da7cc2c34b_m.jpg",
                    @"http://farm6.static.flickr.com/5088/5338153683_d08b8e24e7_m.jpg",
                    @"http://farm6.static.flickr.com/5282/5341981199_6b173c5c42_m.jpg",
                    @"http://farm6.static.flickr.com/5042/5345973796_0f4b3acb37_m.jpg",
                    nil] retain];
    }
}


- (void)viewDidUnload
{
    self.tableView=nil;
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc{
    [_images release];
    [super dealloc];
}

#pragma mark -
#pragma mark UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
     return [_images count];
}

- (UITableViewCell *)tableView:(UITableView *)aTableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    CustomCell *cell = (CustomCell *)[aTableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[CustomCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    NSURL *url=[NSURL URLWithString:[_images objectAtIndex:indexPath.row]];
    [cell.imgView setImageWithURL:url];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 65;
}

@end
