//
//  VideoNotification.h
//  MVVideoPlayer
//
//  Created by apple on 13-6-3.
//  Copyright (c) 2013年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VideoViewController.h"
@interface VideoViewController(VideoNotification)

-(void)deletePlayerAndNotificationObservers;

-(void)removeMovieNotificationHandlers;

-(void)installMovieNotificationObservers;


- (void)loadStateDidChange:(NSNotification *)notification;

- (void) moviePlayBackDidFinish:(NSNotification*)notification;

-(void)mediaIsPreparedToPlayDidChange:(NSNotification*)notification;

-(void)moviePlayBackStateDidChange:(NSNotification*)notification;

@end
