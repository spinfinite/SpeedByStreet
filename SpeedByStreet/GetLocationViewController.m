//
//  GetLocationViewController.m
//  SpeedByStreet
//
//  Created by Sergio Perez on 10/30/14.
//  Copyright (c) 2014 Learning iOS Development. All rights reserved.
//

#import "GetLocationViewController.h"
#import <MapKit/MapKit.h>

@interface GetLocationViewController ()

@property (nonatomic, strong) CLLocationManager *manager;
@property (nonatomic, strong) MKMapView *mapView;

@end

@implementation GetLocationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
        
    self.manager = [[CLLocationManager alloc] init];
    [self.manager requestWhenInUseAuthorization];
    
    CLLocationCoordinate2D location = CLLocationCoordinate2DMake(40.226192, -111.660087);
    float metersInmile = 1609;
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(location, .5* metersInmile, .5* metersInmile);
    
    [self.mapView setRegion:region];
    
    self.view.backgroundColor = [UIColor greenColor];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
