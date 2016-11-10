//
//  PanoramaViewController.m
//  Ti.Panorama
//
//  Created by Flavio De Stefano on 09/11/2016.
//
//

#import "TiBase.h"
#import "PanoramaViewController.h"

@interface PanoramaViewController () {
}

@end

@implementation PanoramaViewController

- (id)initWithFrame:(CGRect)frame {
    if (self = [super init]) {
    
        self.pv = [[PanoramaView alloc] initWithFrame:frame];
        
        [self.pv setOrientToDevice:YES];
        [self.pv setTouchToPan:YES];
        [self.pv setPinchToZoom:YES];
        [self.pv setShowTouches:YES];
        [self.pv setVRMode:YES];
    }
    
    return self;
}

- (void)viewDidLoad {
    ENSURE_UI_THREAD_0_ARGS

    [super viewDidLoad];
    [self setView:self.pv];
}

#pragma mark - GLKViewDelegate

- (void)glkView:(GLKView *)view drawInRect:(CGRect)rect {
    ENSURE_UI_THREAD_0_ARGS
    
    [self.pv draw];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
