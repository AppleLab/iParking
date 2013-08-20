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
//-(void) MapToAnnotation{
//    NSMutableArray *array = [DataStoreController GetArrayAnnotation];
//    for (int i = 0; i<[array count]; i++) {
//        [main_map addAnnotation:[array objectAtIndex:i]];
//    }
//}

//initWithPlacemark



-(void) workTest{
    Annotation *annotationA23 = [[Annotation alloc]init];
    annotationA23.title = @"Супермаркет «Бэхетле»";
    annotationA23.subtitle = @"Ул.Зорге, 77";

    
    NSDictionary *addressDict = @{MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving};
    
    MKPlacemark *placemark = [[MKPlacemark alloc]
                              initWithCoordinate:CLLocationCoordinate2DMake(55.74762259387401, 49.21452283859253)
                              addressDictionary:addressDict];
    
    MKMapItem *mapItem = [[MKMapItem alloc] initWithPlacemark:placemark];
    mapItem.name = annotationA23.title;

    
    
   // MKMapItem *mapItem = [[MKMapItem alloc] init];
    //[mapItem setName:geocodedPlacemark.name];
    NSDictionary *launchOptions = @{MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving};
    MKMapItem *currentLocationMapItem = [MKMapItem mapItemForCurrentLocation];
    [MKMapItem openMapsWithItems:@[currentLocationMapItem, mapItem]
                   launchOptions:launchOptions];
    

     //[self.annotation.mapItem openInMapsWithLaunchOptions:launchOptions];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
      //NSDictionary *addressDict = @{MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving};
    MKPlacemark * myPlacemark = [[MKPlacemark alloc]initWithCoordinate:CLLocationCoordinate2DMake(55.74762259387401, 49.21452283859253) addressDictionary:nil];
    MKMapItem *mapItem = [[MKMapItem alloc] initWithPlacemark:myPlacemark];
    mapItem.name=@"Супермаркет «Бэхетле»";
    /*
     NSArray* mapitems = @[point1,point2,point3];
     [MKMapItems openMapWithItems:mapitems launchOptions:nil];
     */
    [mapItem openInMapsWithLaunchOptions:nil];
    
    /*NSDictionary *launchOptions = @{MKLaunchOptionsDirectionsModeKey : MKLaunchOptionsDirectionsModeDriving};
    MKMapItem *currentLocationMapItem = [MKMapItem mapItemForCurrentLocation];
    [MKMapItem openMapsWithItems:@[currentLocationMapItem, mapItem]launchOptions:launchOptions];
    [self MapToAnnotation];*/
    
    
    
}

@end

