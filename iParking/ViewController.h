//
//  ViewController.h
//  iParking
//
//  Created by Ramil Garaev on 12.08.13.
//  Copyright (c) 2013 Ramil Garaev. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "Annotation.h"

@interface ViewController : UIViewController <MKMapViewDelegate, MKAnnotation>{
    MKMapView *mkMapView;
}

@property (nonatomic, retain) IBOutlet MKMapView *map;

@end

