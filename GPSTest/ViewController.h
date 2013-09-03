//
//  ViewController.h
//  GPSTest
//
//  Created by Taizo Takahira on 2013/08/13.
//  Copyright (c) 2013年 Taizo Takahira. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController <CLLocationManagerDelegate> {
    CLLocationManager *lm;
}
@property (weak, nonatomic) IBOutlet UILabel *latLabel;
@property (weak, nonatomic) IBOutlet UILabel *lngLabal;
@property (weak, nonatomic) IBOutlet UIImageView *compassImg;

@interface ViewController : UIViewController

@end
