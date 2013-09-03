//
//  ViewController.m
//  GPSTest
//
//  Created by Taizo Takahira on 2013/08/13.
//  Copyright (c) 2013年 Taizo Takahira. All rights reserved.
//

// feature_test
// feature_test2
// release_test1
// feature_test3
// hotfix_1538
// feature test1
// feature test2

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    lm = [[CLLocationManager alloc] init];
    lm.delegate = self;
    lm.desiredAccuracy = kCLLocationAccuracyHundredMeters;
    lm.distanceFilter = kCLDistanceFilterNone;
    [lm startUpdatingLocation];
    [lm startUpdatingHeading];
}

- (void) locationManager:(CLLocationManager *)manager didUpdateToLocation: (CLLocation *) newLocation fromLocation:(CLLocation *)oldLocation {
    self.latLabel.text = [NSString stringWithFormat:@"緯度=%g", newLocation.coordinate.latitude];
    self.lngLabal.text = [NSString stringWithFormat:@"経度=%g", newLocation.coordinate.longitude];
}

- (void) locationManager:(CLLocationManager *) manager didUpdateHeading:(CLHeading *)heading {
    self.compassImg.transform = CGAffineTransformMakeRotation(-heading.magneticHeading * M_PI/180);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
