//
//  VideoUIObjects.h
//  MVVideoPlayer
//
//  Created by apple on 13-6-5.
//  Copyright (c) 2013年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>
@class VideoView;
@class VideoProgressbar;
@interface VideoUIObjects : UIView
{
    UIView                  *topBGView;
    VideoView               *videoBack;
    VideoView               *menuButton;
    VideoView               *copyrightButton;
    UILabel                 *videoTitle;             //标题
    
    UIView                  *bottomView;
    VideoView               *playButton;
    VideoView               *stopButton;
    VideoView               *soundButton;
    VideoProgressbar        *progressbar;
    
    
}



@property(nonatomic,retain)UIView                   *topBGView;
@property(nonatomic,retain)VideoView                *videoBack;
@property(nonatomic,retain)VideoView                *menuButton;
@property(nonatomic,retain)VideoView                *copyrightButton;
@property(nonatomic,retain)UILabel                  *videoTitle;


@property(nonatomic,retain)UIView                   *bottomView;
@property(nonatomic,retain)VideoView                *playButton;
@property(nonatomic,retain)VideoView                *stopButton;
@property(nonatomic,retain)VideoView                *soundButton;
@property(nonatomic,retain)VideoProgressbar         *progressbar;


@end






















































