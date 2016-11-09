//
//  ComCaffeinaTiPanoramaView.m
//  Ti.Panorama
//
//  Created by Flavio De Stefano on 03/11/2016.
//
//

#import "ComCaffeinaTiPanoramaView.h"

@implementation ComCaffeinaTiPanoramaView

-(PanoramaViewController*)pvc
{
    self.backgroundColor = [UIColor greenColor];
    
    if (pvc == nil) {
        TiProxy *proxy = self.proxy;
        
        pvc = [[PanoramaViewController alloc] initWithFrame:self.frame];
        UIImage* img = [UIImage imageNamed:@"park_2048.jpg"];
        if (img == nil) {
            NSLog(@"IMAGE NULL");
        }
        
        [pvc.view setFrame:self.frame];
        [self addSubview:pvc.view];
    }
    return pvc;
}

-(void)dealloc
{
    [super dealloc];
}


-(void)setImage_:(id)value
{
    ENSURE_UI_THREAD_1_ARG(value);
    ENSURE_STRING(value);
    [self pvc];
}

- (void)frameSizeChanged:(CGRect)frame bounds:(CGRect)bounds
{
    [TiUtils setView:[self pvc].view positionRect:bounds];
    [super frameSizeChanged:frame bounds:bounds];
}

-(void)draw:(id)args
{
    ENSURE_UI_THREAD_0_ARGS;
    
}


@end
