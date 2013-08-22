//
//  ViewControllerInf.h
//  iParking
//
//  Created by Артур Курбанов on 21.08.13.
//  Copyright (c) 2013 Ramil Garaev. All rights reserved.
//
#import <MapKit/MapKit.h>
#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
@interface ViewControllerInf : UIViewController <MKMapViewDelegate, MKAnnotation, MFMailComposeViewControllerDelegate>
- (IBAction)openMail:(id)sender;

@end
