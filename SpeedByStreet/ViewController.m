//
//  ViewController.m
//  SpeedByStreet
//
//  Created by Sergio Perez on 10/28/14.
//  Copyright (c) 2014 Learning iOS Development. All rights reserved.
//

#import "ViewController.h"
#import "MainTableViewDataSource.h"
#import <MapKit/MapKit.h>

@interface ViewController () <UITableViewDelegate>

@property (nonatomic, strong) UITableView *SBSTableView;
@property (nonatomic, strong) MainTableViewDataSource *tableViewDataSource;
@property (nonatomic, strong) CLLocationManager *manager;
@property (nonatomic, strong) MKMapView *mapView;


@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.title = @"The SBS App";
    self.tableViewDataSource = [MainTableViewDataSource new];
    
    
    self.manager = [[CLLocationManager alloc] init];
    [self.manager requestWhenInUseAuthorization];
    
    CLLocationCoordinate2D location = CLLocationCoordinate2DMake(40.226192, -111.660087);
    float metersInmile = 1609;
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(location, .5* metersInmile, .5*metersInmile);
    
    [self.mapView setRegion:region];
    
    self.SBSTableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    self.SBSTableView.delegate = self;
    
    self.SBSTableView.rowHeight = self.view.frame.size.width;
    
    [self.view addSubview:self.SBSTableView];
    
    [self.tableViewDataSource registerTableView:self.SBSTableView];
     
    self.SBSTableView.dataSource = self.tableViewDataSource;
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
