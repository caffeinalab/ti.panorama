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

-(void)initializeState
{
    [super initializeState];

    if (self.pv == nil) {
        self.pv = [[PanoramaView alloc] initWithFrame:self.frame];
        [self.pv setDelegate:self];
        [self.pv setImageWithName:@"park_2048.jpg"];
        [self.pv setOrientToDevice:YES];
        [self.pv setTouchToPan:NO];
        [self.pv setPinchToZoom:YES];
        [self.pv setShowTouches:NO];
        [self.pv setVRMode:NO];
        
        [self addSubview:self.pv];

    }
}

-(void)dealloc
{
    [super dealloc];
}


-(void)setImage_:(id)value
{    
//    ENSURE_STRING(value);
//    
//    UIImage* image = [TiUtils toImage:value proxy:nil];
//    if (image == nil) {
//       DebugLog(@"Image is null");
//    }
//    [self.pv setImage:image];
}

- (void)frameSizeChanged:(CGRect)frame bounds:(CGRect)bounds
{
    [TiUtils setView:self.pv positionRect:bounds];
    [super frameSizeChanged:frame bounds:bounds];
}


-(void)draw:(id)args
{
    ENSURE_UI_THREAD_0_ARGS
    [self.pv draw];
}

#pragma mark Delegates

- (void)glkView:(GLKView *)view drawInRect:(CGRect)rect {
    [self draw:nil];
}


@end
