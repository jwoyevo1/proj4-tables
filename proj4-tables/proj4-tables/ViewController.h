//
//  ViewController.h
//  proj4-tables
//
//  Created by James Woyevodsky on 4/13/21.
//  Copyright © 2021 Binghamton University. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) IBOutlet UITableView *tableView;
@property (nonatomic) IBOutlet UILabel *theLabel;
@end

