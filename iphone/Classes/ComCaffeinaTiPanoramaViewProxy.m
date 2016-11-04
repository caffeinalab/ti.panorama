//
//  ComCaffeinaTiPanoramaViewProxy.m
//  Ti.Panorama
//
//  Created by Flavio De Stefano on 03/11/2016.
//
//

#import "ComCaffeinaTiPanoramaViewProxy.h"

@implementation ComCaffeinaTiPanoramaViewProxy

#ifndef USE_VIEW_FOR_UI_METHOD
#define USE_VIEW_FOR_UI_METHOD(methodname)\
-(void)methodname:(id)args\
{\
[self makeViewPerformSelector:@selector(methodname:) withObject:args createIfNeeded:YES waitUntilDone:NO];\
}
#endif

-(id)init
{
    // This is the designated initializer method and will always be called
    // when the view proxy is created.
    
    
    return [super init];
}

-(void)_destroy
{
    // This method is called from the dealloc method and is good place to
    // release any objects and memory that have been allocated for the view proxy.
    
    
    [super _destroy];
}

-(void)dealloc
{
    // This method is called when the view proxy is being deallocated. The superclass
    // method calls the _destroy method.
    
    [super dealloc];
}

#pragma mark Public API

USE_VIEW_FOR_UI_METHOD(draw);


@end
