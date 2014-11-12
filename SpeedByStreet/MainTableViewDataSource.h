//
//  MainTableViewDataSource.h
//  SpeedByStreet
//
//  Created by Sergio Perez on 11/4/14.
//  Copyright (c) 2014 Learning iOS Development. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MainTableViewDataSource : NSObject <UITableViewDataSource>

- (void)registerTableView:(UITableView *)tableView;

@end
