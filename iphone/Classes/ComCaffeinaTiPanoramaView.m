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
    [super dealloc];
}


-(PanoramaView*)pv
{
    if (pv == nil) {
        pv = [[PanoramaView alloc] initWithFrame:[self bounds]];
        [pv setDelegate:self];
        [pv setImageWithName:@"images/park_2048.jpg"];
        [pv setOrientToDevice:YES];
        [pv setTouchToPan:NO];
        [pv setPinchToZoom:YES];
        [pv setShowTouches:NO];
        [pv setVRMode:NO];
        [pv setBackgroundColor:[UIColor blueColor]];
        
        [self addSubview:pv];
    
    }
    return pv;
}



-(void)setImage_:(id)value
{    
//    ENSURE_STRING(value);
//    NSString* image = [TiUtils stringValue:value];
//    NSString* filePath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:image];
//    if ([[NSFileManager defaultManager] fileExistsAtPath:filePath]) {
//        NSLog(@"Setting image %@", filePath);
//        [[self pv] setImageWithName:filePath];
//    } else {
//        NSLog(@"[ERROR] Unable to find file %@", filePath)
//    }
}

- (void)frameSizeChanged:(CGRect)frame bounds:(CGRect)bounds
{
    [TiUtils setView:pv positionRect:bounds];
    [super frameSizeChanged:frame bounds:bounds];
}

#pragma mark Delegates

- (void)glkView:(GLKView *)view drawInRect:(CGRect)rect {
    [pv draw];
}


@end
