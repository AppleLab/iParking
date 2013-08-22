//
//  DataStoreController.m
//  iParking
//
//  Created by user on 16.08.13.
//  Copyright (c) 2013 Ramil Garaev. All rights reserved.
//

#import "DataStoreController.h"

@implementation DataStoreController
//work not
+(BOOL) AddAnnotation:(NSString*)title andSubtitle: (NSString*)subtitle andlongitude: (double)longitude andlatitude: (double)latitude{
    @try {
        Annotation *annotation = [Annotation new];
        annotation.title = title;
        annotation.subtitle = subtitle;
        annotation.coordinate = CLLocationCoordinate2DMake(longitude, latitude);
        if ([DataStore AddAnnotation:annotation]) {
            return true;
        }else
            return FALSE;
        
    }
    @catch (NSException *exception) {
        return FALSE;
    }
}
+(BOOL) AddAnnotation:(NSString*)title andSubtitle: (NSString*)subtitle andlongitude:(CLLocationCoordinate2D) coordinat {
    @try {
        Annotation *annotation = [Annotation new];
        annotation.title = title;
        annotation.subtitle = subtitle;
        annotation.coordinate = coordinat;
        NSLog(annotation.title);
        if ([DataStore AddAnnotation:annotation]) {
            return true;
        }else
            return FALSE;
        
    }
    @catch (NSException *exception) {
        return FALSE;
    }
}

+(Annotation*) GetAnnotation:(int) count{
    return [DataStore GetAnnotation: count];
}

+(NSMutableArray*) GetArrayAnnotation{
    return [DataStore GetArrayAnnotation];
}
@end
