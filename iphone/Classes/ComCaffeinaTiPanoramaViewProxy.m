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


#pragma mark Public API

USE_VIEW_FOR_UI_METHOD(draw);

@end
