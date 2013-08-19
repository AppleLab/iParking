//
//  Annoation.m
//  iParking
//
//  Created by user on 16.08.13.
//  Copyright (c) 2013 Ramil Garaev. All rights reserved.
//

#import "Annotation.h"

@implementation Annotation

@synthesize coordinate;
@synthesize title;

- (void)dealloc {
    self.title = nil;
    self.subtitle = nil;
    
}

- (id)initWithLocation: (CLLocationCoordinate2D) l
{
    self = [super init];
    if (self) {
        self.coordinate = l;
    }
    return self;
}



- (CLLocationCoordinate2D)coordinate;
{
    return self.coordinate;
}

- (void)setCoordinate:(CLLocationCoordinate2D)newCoordinate
{
    self.coordinate = newCoordinate;
}

- (MKMapItem*)mapItem {
    NSDictionary *addressDict = @{};
    
    MKPlacemark *placemark = [[MKPlacemark alloc]
                              initWithCoordinate:self.coordinate
                              addressDictionary:addressDict];
    
    MKMapItem *mapItem = [[MKMapItem alloc] initWithPlacemark:placemark];
    mapItem.name = self.title;
    return
    mapItem;
}

@end