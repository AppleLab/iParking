//
//  DataStoreController.h
//  iParking
//
//  Created by user on 16.08.13.
//  Copyright (c) 2013 Ramil Garaev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Annotation.h"
#import "DataStore.h"


@interface DataStoreController : NSObject{
}
+(BOOL) AddAnnotation:(NSString*)title andSubtitle: (NSString*)subtitle andlongitude: (double)longitude andlatitude: (double)latitude;
+(BOOL) AddAnnotation:(NSString*)title andSubtitle: (NSString*)subtitle andlongitude:(CLLocationCoordinate2D) coordinat;
+(Annotation*) GetAnnotation:(int)count;
+(NSMutableArray*) GetArrayAnnotation;

@end
