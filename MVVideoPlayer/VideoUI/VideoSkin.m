//
//  VideoSkin.m
//  MVVideoPlayer
//
//  Created by apple on 13-6-3.
//  Copyright (c) 2013年 apple. All rights reserved.
//

#import "VideoSkin.h"
#import "VideoUIObjects.h"
#import "VideoView.h"
#import "VideoAction.h"



#define VideoBack_P                 @"VideoBack.png"
#define VideoMenuButton_P           @"VideoMenuButton.png"
#define VideoCopyrightButton_P      @"VideoCopyrightButton.png"


@implementation VideoViewController(VideoSkin)



-(void)removeVideoSkin
{
    
}




-(void)createVideoSkin
{
    
    uiObjects = [[VideoUIObjects alloc] initWithFrame:CGRectMake(0, 0, VideoW, VideoH)];
    uiObjects.backgroundColor = [UIColor clearColor];
    [self.view addSubview:uiObjects];
    
    [self createVideoTopBGView];
    [self createVideoBackView];
    [self createMenuButton];
    [self createCopyrightButton];
    [self createVideoTitle];
    
    [self createBottomView];
}



/**
 *	@brief              头部背景
 *	@param
 *	@return
 */
-(void)createVideoTopBGView
{
    UIView *topBGView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, VideoW, 44)];
    topBGView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.8];
    [self.uiObjects addSubview:topBGView];
    self.uiObjects.topBGView = topBGView;
    [topBGView release];
}





#pragma mark 头部处理

/**
 *	@brief              返回按钮
 *	@param
 *	@return
 */
-(void)createVideoBackView
{
    UIImage *tempImage = [UIImage imageNamed:VideoBack_P];
    VideoView *tempView = [[VideoView alloc] initWithFrame:CGRectMake( 10,
                                                                      (self.uiObjects.topBGView.frame.size.height-tempImage.size.height)/2.0,
                                                                      tempImage.size.width,
                                                                      tempImage.size.height)
                                                touchRange:CGRectMake( 0, 0, 75, self.uiObjects.topBGView.frame.size.height)
                                                     image:tempImage];
    
    [tempView addTarget:self action:@selector(backAction) eventType:V_Down];
    [self.uiObjects.topBGView addSubview:tempView];
    self.uiObjects.videoBack = tempView;
    [tempView release];
}


/**
 *	@brief              菜单按钮，单击后出现下拉的菜单列表
 *	@param
 *	@return
 */
-(void)createMenuButton
{
    UIImage *tempImage = [UIImage imageNamed:VideoMenuButton_P];
    VideoView *tempView = [[VideoView alloc] initWithFrame:CGRectMake( VideoW-tempImage.size.width-19,
                                                                      (self.uiObjects.topBGView.frame.size.height-tempImage.size.height)/2.0,
                                                                      tempImage.size.width,
                                                                      tempImage.size.height)
                                                touchRange:CGRectMake( VideoW-tempImage.size.width-30, 0,
                                                                      tempImage.size.width+30, self.uiObjects.topBGView.frame.size.height)
                                                     image:tempImage];    
    [tempView addTarget:self action:@selector(menuButtonAction) eventType:V_Down];
    [self.uiObjects.topBGView addSubview:tempView];
    self.uiObjects.menuButton = tempView;
    [tempView release];
}




/**
 *	@brief              版权按钮，版权的位置是相对于 菜单位置摆放的
 *	@param
 *	@return
 */
-(void)createCopyrightButton
{
    UIImage *tempImage = [UIImage imageNamed:VideoCopyrightButton_P];
    VideoView *tempView = [[VideoView alloc] initWithFrame:CGRectMake( self.uiObjects.menuButton.frame.origin.x-tempImage.size.width-23,
                                                                      (self.uiObjects.topBGView.frame.size.height-tempImage.size.height)/2.0,
                                                                      tempImage.size.width,
                                                                      tempImage.size.height)
                                                touchRange:CGRectMake( VideoW-tempImage.size.width-self.uiObjects.menuButton.frame.size.width-52,
                                                                      0,
                                                                      tempImage.size.width+20, self.uiObjects.topBGView.frame.size.height)
                                                     image:tempImage];
    
    [tempView addTarget:self action:@selector(copyrightButtonAction) eventType:V_Down];
    [self.uiObjects.topBGView addSubview:tempView];
    self.uiObjects.copyrightButton = tempView;
    [tempView release];
}



/**
 *	@brief              视频的标题， 这个 lable按屏幕 一般的宽度缩放
 *	@param
 *	@return
 */
-(void)createVideoTitle
{
    UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake( VideoW/4.0 , (self.uiObjects.topBGView.frame.size.height-20)/2.0, VideoW/2.0, 20)];
    lable.font = [UIFont fontWithName:@"Arial" size:18];
    lable.backgroundColor = [UIColor clearColor];
    lable.textColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:1];
    lable.textAlignment = UITextAlignmentCenter;
    lable.text = @"胖子来了阿尔萨斯巫妖王";
    [self.uiObjects addSubview:lable];
    self.uiObjects.videoTitle = lable;
    [lable release];
}










#pragma mark 底部视图




-(void)createBottomView
{
    UIView *tempView = [[UIView alloc] initWithFrame:CGRectMake(0, VideoH-64, VideoW, 64)];
    tempView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.8];
    [self.uiObjects addSubview:tempView];
    self.uiObjects.bottomView = tempView;
    [tempView release];
}



























@end


































































