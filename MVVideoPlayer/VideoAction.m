//
//  VideoAction.m
//  MVVideoPlayer
//
//  Created by apple on 13-6-5.
//  Copyright (c) 2013年 apple. All rights reserved.
//

#import "VideoAction.h"
#import "VideoUIObjects.h"
#import "VideoView.h"

@implementation VideoViewController(VideoAction)


-(void) backAction
{
    NSLog(@"视频播放器返回---");
}


-(void) menuButtonAction
{
    NSLog(@"栏目触屏---");
}


-(void) copyrightButtonAction
{
    NSLog(@"版权触屏---");
}


-(void) playButtonAction
{
    self.uiObjects.playButton.hidden = YES;
    self.uiObjects.stopButton.hidden = NO;
    NSLog(@"播放按钮----");
}

-(void) stopButtonAction
{
    self.uiObjects.stopButton.hidden = YES;
    self.uiObjects.playButton.hidden = NO;
    NSLog(@"停止按钮---");
}


-(void) soundButtonAction
{
    NSLog(@"声音停止---");
}
























@end










































































