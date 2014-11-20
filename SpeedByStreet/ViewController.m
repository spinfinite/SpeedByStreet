//
//  ViewController.m
//  SpeedByStreet
//
//  Created by Sergio Perez on 10/28/14.
//  Copyright (c) 2014 Learning iOS Development. All rights reserved.
//

#import "ViewController.h"
#import "MainTableViewDataSource.h"
#import "GetLocationViewController.h"
#import "EnterLocationViewController.h"

@interface ViewController () <UITableViewDelegate>

@property (nonatomic, strong) UITableView *SBSTableView;
@property (nonatomic, strong) MainTableViewDataSource *tableViewDataSource;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.title = @"The SBS App";
    self.tableViewDataSource = [MainTableViewDataSource new];
    
    self.SBSTableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.SBSTableView.delegate = self;
    
    self.SBSTableView.rowHeight = (self.view.frame.size.height - 64) / 2;
    
    [self.view addSubview:self.SBSTableView];
    
    [self.tableViewDataSource registerTableView:self.SBSTableView];
     
    self.SBSTableView.dataSource = self.tableViewDataSource;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    if(indexPath.row == 0){
        
        GetLocationViewController *getLocationView = [GetLocationViewController new];
        [self.navigationController pushViewController:getLocationView animated:YES];
        
    }

    else if(indexPath.row == 1){
        
        EnterLocationViewController *enterLocationView = [EnterLocationViewController new];
        [self.navigationController pushViewController:enterLocationView animated:YES];
        
    }


}

@end
