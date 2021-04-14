//
//  ViewController.m
//  proj4-tables
//
//  Created by James Woyevodsky on 4/13/21.
//  Copyright © 2021 Binghamton University. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize tableView;
@synthesize theLabel;

static NSString * championNames[10] = {@"Sylas", @"Twisted Fate", @"Twitch", @"Alistar", @"Zilean", @"Lee Sin", @"Camille", @"Jhin", @"Yasuo", @"Urgot"};

static NSString * championTitles[10] = {@"The Unshackled", @"The Card Master", @"The Plague Rat", @"The Minotaur", @"The Chronokeeper", @"The Blind Monk", @"The Steel Shadow", @"The Virtuoso", @"The Unforgiven", @"The Dreadnought"};

//static int r = arc4random() % 10;



- (void)viewDidLoad {
    [super viewDidLoad];
    
    [tableView setDataSource:self];
    [tableView setDelegate:self];
    
    // Do any additional setup after loading the view.
    //id championTitles[] = {@"The Unshackled", @"The Card Master", @"The Plague Rat", @"The Minotaur", @"The Chronokeeper", @"The Blind Monk", @"The Steel Shadow", @"The Virtuoso", @"The Unforgiven", @"The Dreadnought"};
    //id championNames[] = {@"Sylas", @"Twisted Fate", @"Twitch", @"Alistar", @"Zilean", @"Lee Sin", @"Camille", @"Jhin", @"Yasuo", @"Urgot"};
    
    [self fillLabel];
}

- (void)fillLabel {
    
    int random = arc4random() % 10;
    theLabel.text = championTitles[random];
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if(!cell){
        cell = [[UITableViewCell alloc] init];
    }
  
    NSString *champion = championNames[indexPath.row];
    cell.textLabel.text = champion;
    //[[cell textLabel] setText:[NSString stringWithFormat:@"%@", championNames[0]]];
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //want to have it say correct or incorrect, but will do later.
    [self fillLabel];
}



@end
