//
//  VideoUIObjects.m
//  MVVideoPlayer
//
//  Created by apple on 13-6-5.
//  Copyright (c) 2013年 apple. All rights reserved.
//

#import "VideoUIObjects.h"
#import "VideoView.h"
#import "VideoProgressbar.h"

@implementation VideoUIObjects
@synthesize topBGView;
@synthesize videoBack;
@synthesize copyrightButton;
@synthesize menuButton;
@synthesize videoTitle;
@synthesize bottomView;
@synthesize playButton;
@synthesize stopButton;
@synthesize soundButton;
@synthesize progressbar;

- (void)dealloc
{
    [progressbar release];
    [soundButton release];
    [stopButton release];
    [playButton release];
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
        playButton = nil;
        stopButton = nil;
        soundButton = nil;
        progressbar = nil;
        
    }
    return self;
}



#pragma mark 对触屏做处理
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    

    
    
    if (self.videoBack && [self.videoBack touchResponse:point])
            return self.videoBack.button;
    if (self.self.menuButton && [self.self.menuButton touchResponse:point])
        return self.menuButton.button;
    if (self.self.self.copyrightButton && [self.self.self.copyrightButton touchResponse:point])
        return self.copyrightButton.button;
    
    if (self.playButton && [self.playButton touchResponse:point])
        return self.playButton.button;
    if (self.stopButton && [self.stopButton touchResponse:point])
        return self.stopButton.button;
    
    if (self.soundButton && [self.soundButton touchResponse:point])
        return self.soundButton.button;
    if (self.progressbar && [self.progressbar touchResponse:point])
        return self.progressbar.slider;
    
    
    
    return [super hitTest:point withEvent:event];
}





@end



































































