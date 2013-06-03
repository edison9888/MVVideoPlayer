//
//  VideoViewController.h
//  MVVideoPlayer
//
//  Created by apple on 13-5-30.
//  Copyright (c) 2013年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@interface VideoViewController : UIViewController
{
    
    MPMoviePlayerController *moviePlayer;
    NSString                *url;
}



@property(nonatomic,retain)MPMoviePlayerController *moviePlayer;
@property(nonatomic,retain)NSString *url;



- (id)initWithVideoURL:(NSString *)aurl;

-(void)removeMovieViewFromViewHierarchy;





@end























































































