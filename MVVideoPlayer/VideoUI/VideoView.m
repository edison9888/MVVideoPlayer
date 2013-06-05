//
//  VideoView.m
//  MVVideoPlayer
//
//  Created by apple on 13-6-4.
//  Copyright (c) 2013年 apple. All rights reserved.
//

#import "VideoView.h"

@implementation VideoView
@synthesize background;
@synthesize touchRange;
@synthesize button;

- (void)dealloc
{
    [button release];
    [background release];
    [super dealloc];
}

- (id)initWithFrame:(CGRect)aFrame touchRange:(CGRect )aTouchRange
{
    self = [super initWithFrame:aFrame];
    if (self)
    {
        self.touchRange = aTouchRange;
        background = nil;
        
        [self customLayout];
    }
    return self;
}




- (id)initWithFrame:(CGRect)aFrame touchRange:(CGRect )aTouchRange image:(UIImage *)aImage
{
    self = [super initWithFrame:aFrame];
    if (self)
    {
        self.touchRange = aTouchRange;
        if ( aImage )
            background = [[UIImageView alloc] initWithImage:aImage];
        else
            background = nil;
        
        [self customLayout];
    }
    return self;
}

-(void)customLayout
{
 
    if (background)
        [self addSubview:background];
        
}


#pragma mark 事件的支持
- (void)addTarget:(id)target action:(SEL)action eventType:(VideoUIEventType )type
{
    button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    button.showsTouchWhenHighlighted = YES;
    [self addSubview:button];
    
    
    if (type == V_Down)
        [button addTarget:target action:action forControlEvents: UIControlEventTouchDown];
    else
        [button addTarget:target action:action forControlEvents: UIControlEventTouchUpInside];
}















@end


























































