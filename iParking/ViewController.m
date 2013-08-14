//
//  ViewController.m
//  iParking
//
//  Created by Ramil Garaev on 12.08.13.
//  Copyright (c) 2013 Ramil Garaev. All rights reserved.
//

#import "ViewController.h"
#import "Core.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)viewWillAppear:(BOOL)animated{
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
- (void)viewDidLoad
{
    [super viewDidLoad];
    //[[Core core] test];
	// Do any additional setup after loading the view, typically from a nib.
    [super viewDidLoad];
    //mapview
    mkMapView = [[MKMapView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:mkMapView];
}

- (void)didReceiveMemoryWarning
{
    
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
