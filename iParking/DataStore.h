//
//  DataStore.h
//  iParking
//
//  Created by user on 16.08.13.
//  Copyright (c) 2013 Ramil Garaev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Annotation.h"

@interface DataStore : NSObject{
    
}
+(BOOL) AddAnnotation:(Annotation*)annotation;
+(Annotation*) GetAnnotation:(int)count;
+(NSMutableArray*) GetArrayAnnotation;
//lol private method
+(void) Start;

@end
