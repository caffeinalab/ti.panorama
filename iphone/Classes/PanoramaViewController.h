//
//  PanoramaViewController.h
//  Ti.Panorama
//
//  Created by Flavio De Stefano on 09/11/2016.
//
//

#import <GLKit/GLKit.h>
#import "PanoramaView.h"

@interface PanoramaViewController : GLKViewController {
    PanoramaView* pv;
}

-(id)initWithFrame:(CGRect)frame;

@end
