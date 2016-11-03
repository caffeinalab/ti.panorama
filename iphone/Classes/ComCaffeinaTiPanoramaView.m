//
//  ComCaffeinaTiPanoramaView.m
//  Ti.Panorama
//
//  Created by Flavio De Stefano on 03/11/2016.
//
//

#import "ComCaffeinaTiPanoramaView.h"
#import "PanoramaView.h"

@implementation ComCaffeinaTiPanoramaView

-(void)dealloc
{
    RELEASE_TO_NIL(pv);
    [super dealloc];
}

-(PanoramaView*)pv
{
    if (pv == nil) {
        pv = [[PanoramaView alloc] initWithFrame:self.frame];
        [pv setOrientToDevice:YES];
        [pv setTouchToPan:NO];
        [pv setPinchToZoom:YES];
        [pv setShowTouches:NO];;
        [self addSubview:pv];
        NSLog(@"Panorama View added");
    }
    return pv;
}

-(void)didFirePropertyChanges
{
    [[self pv] draw];
}

-(void)setImage_:(id)value
{
    ENSURE_STRING(value);
    image = value;
    NSLog(@"Image set %@", image);
    [[self pv] setImage:image];
}

-(void)frameSizeChanged:(CGRect)frame bounds:(CGRect)bounds
{
    [[self pv] setFrame:bounds];
    [super frameSizeChanged:frame bounds:bounds];
}

#pragma mark Delegates

-(void) glkView:(GLKView *)view drawInRect:(CGRect)rect{
    [[self pv] draw];
}

@end
