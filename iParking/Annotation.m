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
@synthesize subtitle;

- (void)dealloc {
    self.title = nil;
    self.subtitle = nil;
    
}

@end