//
//  ComCaffeinaTiPanoramaView.h
//  Ti.Panorama
//
//  Created by Flavio De Stefano on 03/11/2016.
//
//

#import "TiBase.h"
#import "TiUIView.h"
#import "PanoramaView.h"

@interface ComCaffeinaTiPanoramaView : TiUIView<GLKViewDelegate> {

}

@property (nonatomic, assign) PanoramaView* pv;

#pragma mark Public APIs

-(void)setImage_:(id)value;
-(void)draw:(id)args;

@end
