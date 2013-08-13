//
//  Core.m
//  iParking
//
//  Created by Ramil Garaev on 12.08.13.
//  Copyright (c) 2013 Ramil Garaev. All rights reserved.
//

#import "Core.h"

static Core* _core;

@implementation Core

-(id) init
{
    [[NSError errorWithDomain:@"error" code:0 userInfo:Nil] raise];
    return nil;
}

+(Core*) core
{
    @synchronized(_core)
    {
        if (!_core)
            _core = [[super alloc] init];
        return _core;
    }
}

@end
