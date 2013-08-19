//
//  ViewController.m
//  iParking
//
//  Created by Ramil Garaev on 12.08.13.
//  Copyright (c) 2013 Ramil Garaev. All rights reserved.
//




    
#import "ViewController.h"

    
@implementation ViewController

//@synthesize main_map;

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
   // self.main_map = nil;
}

// view annoation at map
-(void) MapToAnnotation{
    NSMutableArray *array = [DataStoreController GetArrayAnnotation];
    for (int i = 0; i<[array count]; i++) {
        [main_map addAnnotation:[array objectAtIndex:i]];
    }
}

//initWithPlacemark
-(void) simplecode{
    
    MKPlacemark*myPlacemark =[[MKPlacemark alloc] initWithCoordinate:CLLocationCoordinate2DMake(53.90,27.56) addressDictionary:nil];
    MKMapItem*myPoint =[[MKMapItem alloc] initWithPlacemark:myPlacemark];
  [myPoint openInMapsWithLaunchOptions:nil];
//    Annotation *an = [Annotation alloc] initWithCoordine
//    an.title = @"sdfgsgdsg";
 //   CLLocation *cloc = [[CLLocation alloc]init];
 //   MKMapItem * mk = [an mapItem];
    
    
}


-(void) workTest{
    MKMapItem *mapItem = [[MKMapItem alloc] init];
    //[mapItem setName:geocodedPlacemark.name];
    NSDictionary *launchOptions = @{MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving};
    MKMapItem *currentLocationMapItem = [MKMapItem mapItemForCurrentLocation];
    [MKMapItem openMapsWithItems:@[currentLocationMapItem, mapItem]
                   launchOptions:launchOptions];
    
    
    // [self.annotation.mapItem openInMapsWithLaunchOptions:launchOptions];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self workTest];


//    [self MapToAnnotation];
    
    
   /* mkMapView = [[MKMapView alloc]initWithFrame: self.view.bounds];
    [self.view addSubview:mkMapView];
    */
    
    
}

- (void)changeMapType:(UISegmentedControl*)sender {
    if (sender.selectedSegmentIndex == 0) {
        main_map.mapType = MKMapTypeStandard;
    } else if (sender.selectedSegmentIndex == 1) {
        main_map.mapType = MKMapTypeSatellite;
    } else if (sender.selectedSegmentIndex == 2) {
        main_map.mapType = MKMapTypeHybrid;
    }
}

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation
{
    if (annotation == mapView.userLocation) {
        return nil;
    }
    
    static NSString* annotationIdentifier = @"annotationIdentifier";
    MKPinAnnotationView* annotationView = (MKPinAnnotationView *)[mapView dequeueReusableAnnotationViewWithIdentifier:annotationIdentifier];
    
    if (!annotationView) {
        annotationView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation
                                                         reuseIdentifier:nil];
        if([[annotation title] isEqualToString:@"Annotation1"]) {
            [annotationView setPinColor:MKPinAnnotationColorRed];
        } else {
            [annotationView setPinColor:MKPinAnnotationColorGreen];
            annotationView.animatesDrop = YES;
            annotationView.canShowCallout = YES;
        }
    }
    
    return annotationView;
}

@end

