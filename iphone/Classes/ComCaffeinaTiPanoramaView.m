//
//  ComCaffeinaTiPanoramaView.m
//  Ti.Panorama
//
//  Created by Flavio De Stefano on 03/11/2016.
//
//

#import "ComCaffeinaTiPanoramaView.h"

@implementation ComCaffeinaTiPanoramaView

-(void)initializeState
{
    ENSURE_UI_THREAD_0_ARGS

    [super initializeState];
    
    TiProxy *proxy = self.proxy;
        
    pvc = [[PanoramaViewController alloc] initWithFrame:[self frame]];
    [self addSubview:pvc.view];
}

-(void)dealloc
{
    [super dealloc];
}

-(void)setImage_:(id)value
{
    ENSURE_UI_THREAD_1_ARG(value)
    ENSURE_STRING(value)
    
    UIImage* image = [UIImage imageNamed:value];
    if (image == nil) {
        NSLog(@"IMAGE NULL");
        return;
    }
    
    [pvc.pv setImage:image];
}

- (void)frameSizeChanged:(CGRect)frame bounds:(CGRect)bounds
{
    ENSURE_UI_THREAD_0_ARGS

    [TiUtils setView:pvc.view positionRect:bounds];
    [super frameSizeChanged:frame bounds:bounds];
}

-(void)draw:(id)args
{
    ENSURE_UI_THREAD_0_ARGS
    
    [pvc.pv draw];
}


@end
