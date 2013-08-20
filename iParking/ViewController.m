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
    NSMutableArray *array = [DataStoreController GetArrayAnnotation];
    [main_map addAnnotations:array];

}

//initWithPlacemark


//-(void) tabView{
//    int typesWidth=260, typesHeight=30, distanceFromBottom=60;
//    mapTypes = new UISegmentedControl(new RectangleF((View.Bounds.Width-typesWidth)/2, View.Bounds.Height-distanceFromBottom, typesWidth, typesHeight));
//    mapTypes.InsertSegment("Road", 0, false);
//    mapTypes.InsertSegment("Satellite", 1, false);
//    mapTypes.InsertSegment("Hybrid", 2, false);
//    mapTypes.SelectedSegment = 0; // Road is the default
//    mapTypes.AutoresizingMask = UIViewAutoresizing.FlexibleTopMargin;
//    mapTypes.ValueChanged += (s, e) => {
//        switch(mapTypes.SelectedSegment) {
//            case 0:
//                mapView.MapType = MKMapType.Standard;
//                break;
//            case 1:
//                mapView.MapType = MKMapType.Satellite;
//                break;
//            case 2:
//                mapView.MapType = MKMapType.Hybrid;
//                break;
//        }
//    };
//}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self GetMyLocation:nil];
//      //NSDictionary *addressDict = @{MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving};
//    MKPlacemark * myPlacemark = [[MKPlacemark alloc]initWithCoordinate:CLLocationCoordinate2DMake(55.74762259387401, 49.21452283859253) addressDictionary:nil];
//    MKMapItem *mapItem = [[MKMapItem alloc] initWithPlacemark:myPlacemark];
//    mapItem.name=@"Супермаркет «Бэхетле»";
    /*
     NSArray* mapitems = @[point1,point2,point3];
     [MKMapItems openMapWithItems:mapitems launchOptions:nil];
     */
    /*NSDictionary *launchOptions = @{MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving};
    MKMapItem *currentLocationMapItem = [MKMapItem mapItemForCurrentLocation];
    [MKMapItem openMapsWithItems:@[currentLocationMapItem, mapItem]launchOptions:launchOptions];
     */
    [self MapToAnnotation];
    
    
    
}

@end

