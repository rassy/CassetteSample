//
//  ViewController.m
//  CassetteSample
//
//  Created by Tomohiro Ryumura on 3/2/14.
//  Copyright (c) 2014 Tomohiro Ryumura. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, weak) IBOutlet UITableView *cassetteTable;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	NSLog(@"viewDidLoad");
}
- (void)viewDidLayoutSubviews {
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell@"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"%d" ,indexPath.row];
    return cell;
}
@end
