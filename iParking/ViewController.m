//
//  ViewController.m
//  iParking
//
//  Created by Ramil Garaev on 12.08.13.
//  Copyright (c) 2013 Ramil Garaev. All rights reserved.
//




    
#import "ViewController.h"

    
@implementation ViewController

@synthesize map;

- (IBAction)GetMyLocation:(id)sender {
    map.showsUserLocation = YES;
    [map setUserTrackingMode:MKUserTrackingModeFollow animated:YES];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        // Initialization code here.
    }
    return self;
}

/*-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    //Координаты точки на карте
    CLLocationCoordinate2D location;
    location.latitude = 55.7877000;
    location.longitude= 49.1248000;
    MKCoordinateSpan span;
    span.latitudeDelta=0.07;
    span.longitudeDelta = 0.07;
    MKCoordinateRegion region;
    region.center = location;
    region.span= span;
    [mkMapView setRegion: region animated:animated];
}
*/

- (void)viewDidUnload
{
    [super viewDidUnload];
    self.map = nil;
}

// view annoation at map
-(void) MapToAnnotation{
    NSMutableArray *array = [DataStoreController GetArrayAnnotation];
    for (int i = 0; i<[array count]; i++) {
        [map addAnnotation:[array objectAtIndex:i]];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	map.showsUserLocation = YES;
    [map setUserTrackingMode:MKUserTrackingModeFollow animated:YES];// слежение заместо положением
    
    UISegmentedControl *segmentedControl = [[UISegmentedControl alloc] initWithItems:
                                            [NSArray arrayWithObjects:
                                             @"Карта",
                                             @"Спутник",
                                             @"Гибрид",
                                             nil]];
    [segmentedControl addTarget:self action:@selector(changeMapType:) forControlEvents:UIControlEventValueChanged];
    segmentedControl.frame = CGRectMake(45.0f, 50.0f, 200.0f, 30.0f);
    segmentedControl.selectedSegmentIndex = 0;
    segmentedControl.segmentedControlStyle = UISegmentedControlStyleBar;
    
    [self.view addSubview:segmentedControl];

    [self MapToAnnotation];
    
    
   /* mkMapView = [[MKMapView alloc]initWithFrame: self.view.bounds];
    [self.view addSubview:mkMapView];
    */
    
    
}

- (void)changeMapType:(UISegmentedControl*)sender {
    if (sender.selectedSegmentIndex == 0) {
        map.mapType = MKMapTypeStandard;
    } else if (sender.selectedSegmentIndex == 1) {
        map.mapType = MKMapTypeSatellite;
    } else if (sender.selectedSegmentIndex == 2) {
        map.mapType = MKMapTypeHybrid;
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
