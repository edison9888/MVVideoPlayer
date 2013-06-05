//
//  VideoUIObjects.m
//  MVVideoPlayer
//
//  Created by apple on 13-6-5.
//  Copyright (c) 2013年 apple. All rights reserved.
//

#import "VideoUIObjects.h"
#import "VideoView.h"

@implementation VideoUIObjects
@synthesize topBGView;
@synthesize videoBack;
@synthesize copyrightButton;
@synthesize menuButton;
@synthesize videoTitle;
@synthesize bottomView;

- (void)dealloc
{
    [bottomView release];
    [videoTitle release];
    [copyrightButton release];
    [menuButton release];
    [topBGView release];
    [videoBack release];
    [super dealloc];
}


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        topBGView = nil;
        videoBack = nil;
        menuButton = nil;
        copyrightButton = nil;
        videoTitle = nil;
        bottomView = nil;
    }
    return self;
}



#pragma mark 对触屏做处理
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    
    //对按钮进行特殊处理
    if ( self.videoBack && self.videoBack.userInteractionEnabled && self.videoBack.hidden==FALSE && CGRectContainsPoint(self.videoBack.touchRange, point))
        return self.videoBack.button;
    if ( self.menuButton && self.menuButton.userInteractionEnabled && self.menuButton.hidden==FALSE && CGRectContainsPoint(self.menuButton.touchRange, point))
        return self.menuButton.button;
    
    if ( self.copyrightButton && self.copyrightButton.userInteractionEnabled && self.copyrightButton.hidden==FALSE && CGRectContainsPoint(self.copyrightButton.touchRange, point))
        return self.copyrightButton.button;
    
    
    return [super hitTest:point withEvent:event];
}





@end



































































