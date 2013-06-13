//
//  VideoViewController.h
//  MVVideoPlayer
//
//  Created by apple on 13-5-30.
//  Copyright (c) 2013年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>


#define VideoW [UIScreen mainScreen].bounds.size.height
#define VideoH [UIScreen mainScreen].bounds.size.width

@class VideoUIObjects;
@interface VideoViewController : UIViewController
{
    
    MPMoviePlayerController *moviePlayer;
    VideoUIObjects          *uiObjects;
}



@property(nonatomic,retain)MPMoviePlayerController *moviePlayer;
@property(nonatomic,retain)NSString                *url;
@property(nonatomic,retain)VideoUIObjects          *uiObjects;


- (id)initWithVideoURL:(NSString *)aurl;

-(void)removeMovieViewFromViewHierarchy;


-(void)update;



@end























































































