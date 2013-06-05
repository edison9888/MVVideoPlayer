//
//  VideoUIObjects.h
//  MVVideoPlayer
//
//  Created by apple on 13-6-5.
//  Copyright (c) 2013年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>
@class VideoView;
@interface VideoUIObjects : UIView
{
    UIView                  *topBGView;
    VideoView               *videoBack;
    VideoView               *menuButton;
    VideoView               *copyrightButton;
    UILabel                 *videoTitle;             //标题
    
    UIView                  *bottomView;
    
}



@property(nonatomic,retain)UIView                   *topBGView;
@property(nonatomic,retain)VideoView                *videoBack;
@property(nonatomic,retain)VideoView                *menuButton;
@property(nonatomic,retain)VideoView                *copyrightButton;
@property(nonatomic,retain)UILabel                  *videoTitle;


@property(nonatomic,retain)UIView                   *bottomView;


@end






















































