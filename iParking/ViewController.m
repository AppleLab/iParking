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
    
    
    Annotation *annotation = [Annotation new];
    annotation.title = @"Annotation1";
    annotation.subtitle = @"My annotation example";
    annotation.coordinate = CLLocationCoordinate2DMake(48.298674f, 35.395776f);
    [map addAnnotation:annotation];
    
    
    
    Annotation *annotation2 = [Annotation new];
    annotation2.title = @"Annotation2";
    annotation2.subtitle = @"My annotation example";
    annotation2.coordinate = CLLocationCoordinate2DMake(47.298674f, 35.395776f);
    [map addAnnotation:annotation2];
    
    Annotation *annotationA1 = [Annotation new];
    annotationA1.title = @"ТЦ «Сувар Плаза»";
    annotationA1.subtitle = @"ул.Спартаковская, 6";
    annotationA1.coordinate = CLLocationCoordinate2DMake(55.779215877174096, 49.129743576049805);
    [map addAnnotation:annotationA1];
    
    Annotation *annotationK1= [Annotation new];
    annotationK1.title = @"Гипермаркет «КЦ «Кей Казань»";
    annotationK1.subtitle = @"Пр.Ибрагимова, 83";
    annotationK1.coordinate = CLLocationCoordinate2DMake(55.82198352211786, 49.09895181655884);
    [map addAnnotation:annotationK1];
    
    Annotation *annotationA2 = [Annotation new];
    annotationA2.title = @"Гипермаркет «Кольцо» ";
    annotationA2.subtitle = @"ул.Петербургская, 1";
    annotationA2.coordinate = CLLocationCoordinate2DMake(55.786455667264896, 49.12436842918396);
    [map addAnnotation:annotationA2];
    
    Annotation *annotationK2 = [Annotation new];
    annotationK2.title = @"Спортивный комплекс «Ватан»";
    annotationK2.subtitle = @"Ул.Бондаренко, 2";
    annotationK2.coordinate = CLLocationCoordinate2DMake(55.83370219701798, 49.10495661199093);
    [map addAnnotation:annotationK2];
    
    Annotation *annotationA3 = [Annotation new];
    annotationA3.title = @"ТРК «Корстон-Казань»";
    annotationA3.subtitle = @"ул.Н.Ершова, 1а";
    annotationA3.coordinate = CLLocationCoordinate2DMake(55.793808710087056, 49.14950609207153);
    [map addAnnotation:annotationA3];
    
    Annotation *annotationK3 = [Annotation new];
    annotationK3.title = @"ТК «ДОМО»";
    annotationK3.subtitle = @"Ул.Декабристов, 113";
    annotationK3.coordinate = CLLocationCoordinate2DMake(55.821670111900005, 49.08721446990967);
    [map addAnnotation:annotationK3];
    
    Annotation *annotationA4 = [Annotation new];
    annotationA4.title = @"ТД «Муравейник»";
    annotationA4.subtitle = @"ул.Тукая, 2";
    annotationA4.coordinate = CLLocationCoordinate2DMake(55.78502893173571,  49.10768508911133);
    [map addAnnotation:annotationA4];
    
    Annotation *annotationK4 = [Annotation new];
    annotationK4.title = @"Бизнес центр";
    annotationK4.subtitle = @"Ул.Проточная, 8";
    annotationK4.coordinate = CLLocationCoordinate2DMake(55.81337587801879, 49.08612012863159);
    [map addAnnotation:annotationK4];
    
    Annotation *annotationA5 = [Annotation new];
    annotationA5.title = @"ТЦ «Модная семья»";
    annotationA5.subtitle = @"ул.Б.Шахиди, 17";
    annotationA5.coordinate = CLLocationCoordinate2DMake(55.78679047500998 , 49.106547832489014);
    [map addAnnotation:annotationA5];
    
    //нужно проверить адрес
    Annotation *annotationK5 = [Annotation new];
    annotationK5.title = @"Бизнес центр «Союз»";
    annotationK5.subtitle = @"Ул.Васильченко, 1";
    annotationK5.coordinate = CLLocationCoordinate2DMake(55.83861851453064, 49.04439568519592);
    [map addAnnotation:annotationK5];
    
    Annotation *annotationA6 = [Annotation new];
    annotationA6.title = @"гипермаркет «ГУМ»»";
    annotationA6.subtitle = @"ул.Баумана, 51";
    annotationA6.coordinate = CLLocationCoordinate2DMake(55.787755670422854 , 49.12135362625122);
    [map addAnnotation:annotationA6];
    
    Annotation *annotationK6 = [Annotation new];
    annotationK6.title = @"Бизнес центр»";
    annotationK6.subtitle = @"Пр.Ибрагимова, 58";
    annotationK6.coordinate = CLLocationCoordinate2DMake(55.820100009246715, 49.09582167863846);
    [map addAnnotation:annotationK6];
    
    Annotation *annotationK7 = [Annotation new];
    annotationK7.title = @"ТК «Мега Мебель»»";
    annotationK7.subtitle = @"Ул.Сибирский тракт, 34";
    annotationK7.coordinate = CLLocationCoordinate2DMake(55.81788488144342, 49.18278694152832);
    [map addAnnotation:annotationK7];
    
    
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
