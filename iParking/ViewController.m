//
//  ViewController.m
//  iParking
//
//  Created by Ramil Garaev on 12.08.13.
//  Copyright (c) 2013 Ramil Garaev. All rights reserved.
//




    
#import "ViewController.h"

    
@implementation ViewController

@synthesize main_map;
@synthesize array;
- (IBAction)GetMyLocation:(id)sender {
    main_map.showsUserLocation = YES;
    [main_map setUserTrackingMode:MKUserTrackingModeFollow animated:YES];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        // Initialization code here.
    }
    return self;
}



- (void)viewDidUnload
{
    [super viewDidUnload];
    self.main_map = nil;
}

// view annoation at map
-(void) MapToAnnotation{
    array = [DataStoreController GetArrayAnnotation];
    [main_map addAnnotations:array];

}

-(void) closestPin{

    CLLocationDistance distance;
    for (int i=0; i<array.count; i++) {
    Annotation *an= [array objectAtIndex:i];
    double lat=an.coordinate.latitude;
    double lon=an.coordinate.longitude;
  //  CLLocation *mylocation = [[CLLocation alloc] initWithLatitude:location.latitude longitude:location.longitude];
    CLLocation *secondLocation = [[CLLocation alloc] initWithLatitude:lat longitude:lon];
        
        CLLocation *pinLocation = [[CLLocation alloc] initWithLatitude:an.coordinate.latitude longitude:an.coordinate.longitude];
        CLLocation *myLocation = [[CLLocation alloc] initWithLatitude:main_map.userLocation.coordinate.latitude longitude:main_map.userLocation.coordinate.longitude];
        
        distance = [secondLocation distanceFromLocation:myLocation];
      // distance= [an.coordinate distanceFromLocation:location];
    }
}




- (void)viewDidLoad
{
    [super viewDidLoad];
    //[self GetMyLocation:nil];
    CLLocationCoordinate2D startCoord = CLLocationCoordinate2DMake(55.779215877174096, 49.129743576049805);
    MKCoordinateRegion adjustedRegion = [main_map regionThatFits:MKCoordinateRegionMakeWithDistance(startCoord, 20000 , 20000)];
    [main_map setRegion:adjustedRegion animated:YES];
    [self MapToAnnotation];
    
    //add new code
    
    
}

@end

