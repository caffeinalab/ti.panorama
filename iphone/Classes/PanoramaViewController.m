//
//  PanoramaViewController.m
//  Ti.Panorama
//
//  Created by Flavio De Stefano on 09/11/2016.
//
//

#import "PanoramaViewController.h"
#import "UIKit/UIKit.h"

@interface PanoramaViewController () {
}

@end

@implementation PanoramaViewController

- (id)initWithFrame:(CGRect)frame {
    if (self = [super init]) {
    
        pv = [[PanoramaView alloc] initWithFrame:frame];
        UIImage* img = [UIImage imageNamed:@"park_2048.jpg"];
        if (img == nil) {
            NSLog(@"IMAGE NULL");
        }
        [pv setImage: img];
        
        [pv setOrientToDevice:YES];
        [pv setTouchToPan:YES];
        [pv setPinchToZoom:YES];
        [pv setShowTouches:NO];
        [pv setVRMode:NO];
        
       //  [pv setDelegate:self];
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setView:pv];
}

#pragma mark - GLKViewDelegate

- (void)glkView:(GLKView *)view drawInRect:(CGRect)rect {
    [pv draw];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
