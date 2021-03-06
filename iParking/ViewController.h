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
#import "DataStoreController.h"
#import <MessageUI/MessageUI.h>
#import "EditViewController.h"

#define METERS_PER_MILE 1609.344

@interface ViewController : UIViewController <MKMapViewDelegate, MKAnnotation, MFMailComposeViewControllerDelegate,ADCDelegate>{
    MKMapView *main_map;
}
@property (weak, nonatomic) IBOutlet UIButton *blabla;
@property (weak, nonatomic) IBOutlet UISearchBar *search;
@property (nonatomic, retain) IBOutlet MKMapView *main_map;
@property CLLocationCoordinate2D current_location;
@property NSMutableArray* array;
@property NSMutableArray * arrayForCheck;

-(BOOL) check:(Annotation*)annnotation;
-(IBAction)dropPin:(id)sender;
- (IBAction)addTitle:(id)sender;
-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context;

- (void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control;
- (MKAnnotationView *)mapView:(MKMapView *)theMapView viewForAnnotation:(id <MKAnnotation>)annotation;

-(NSMutableArray*)serializeAnnotations;
-(void)applicationWillTerminate:(UIApplication *)application;

@end

