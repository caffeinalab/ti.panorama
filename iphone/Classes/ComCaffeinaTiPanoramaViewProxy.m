//
//  ComCaffeinaTiPanoramaViewProxy.m
//  Ti.Panorama
//
//  Created by Flavio De Stefano on 03/11/2016.
//
//

#import "ComCaffeinaTiPanoramaViewProxy.h"

@implementation ComCaffeinaTiPanoramaViewProxy

-(id)init
{
    // This is the designated initializer method and will always be called
    // when the view proxy is created.
    
    
    return [super init];
}

-(void)_destroy
{
    // This method is called from the dealloc method and is good place to
    // release any objects and memory that have been allocated for the view proxy.
    
    
    [super _destroy];
}

-(void)dealloc
{
    // This method is called when the view proxy is being deallocated. The superclass
    // method calls the _destroy method.
    
    [super dealloc];
}

-(id)_initWithPageContext:(id<TiEvaluator>)context
{
    // This method is one of the initializers for the view proxy class. If the
    // proxy is created without arguments then this initializer will be called.
    // This method is also called from the other _initWithPageContext method.
    // The superclass method calls the init and _configure methods.
    
    
    return [super _initWithPageContext:context];
}

-(id)_initWithPageContext:(id<TiEvaluator>)context_ args:(NSArray*)args
{
    // This method is one of the initializers for the view proxy class. If the
    // proxy is created with arguments then this initializer will be called.
    // The superclass method calls the _initWithPageContext method without
    // arguments.
    
    return [super _initWithPageContext:context_ args:args];
}

-(void)_configure
{
    // This method is called from _initWithPageContext to allow for
    // custom configuration of the module before startup. The superclass
    // method calls the startup method.
    
    [super _configure];
}

-(void)_initWithProperties:(NSDictionary *)properties
{
    // This method is called from _initWithPageContext if arguments have been
    // used to create the view proxy. It is called after the initializers have completed
    // and is a good point to process arguments that have been passed to the
    // view proxy create method since most of the initialization has been completed
    // at this point.
    
    [super _initWithProperties:properties];
}

-(void)viewWillAttach
{
    
}

-(void)viewDidAttach
{
    ComCaffeinaTiPanoramaView* ourView = (ComCaffeinaTiPanoramaView*)[self view];
    [super viewDidAttach];
}

-(void)viewDidDetach
{
    // This method is called right before the view is detached from the proxy
    
}

-(void)viewWillDetach
{
    // This method is called right after the view has detached from the proxy
}

#pragma mark Public API



@end
