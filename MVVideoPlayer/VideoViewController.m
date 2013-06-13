//
//  VideoViewController.m
//  MVVideoPlayer
//
//  Created by apple on 13-5-30.
//  Copyright (c) 2013年 apple. All rights reserved.
//

#import "VideoViewController.h"
#import "VideoNotification.h"
#import "VideoSkin.h"
#import "VideoUIObjects.h"
#import "VideoProgressbar.h"



@interface VideoViewController ()

@end

@implementation VideoViewController
@synthesize moviePlayer;
@synthesize url;
@synthesize uiObjects;

- (void)dealloc
{
    [uiObjects release];
    [url release];
    [moviePlayer release];
    [super dealloc];
}


- (id)initWithVideoURL:(NSString *)aurl
{
    self = [super init];
    if (self)
    {
        self.url = aurl;
        uiObjects = nil;
    }
    return self;
}










- (void)viewDidLoad
{
    [super viewDidLoad];
    [UIApplication sharedApplication].statusBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
   
    self.view.frame = CGRectMake(0, 0, VideoW, VideoH);
    self.view.backgroundColor = [UIColor redColor];
    
    
//    [self createVideoSkin];
    
    [self createAndConfigurePlayerWithURL:self.url];
    [self update];
    
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}



-(void)viewDidAppear:(BOOL)animated
{
    self.view.frame = CGRectMake(0, 0, VideoW, VideoH);
}



-(void)createAndConfigurePlayerWithURL:(NSString *)aurl
{

    
    float w = [UIScreen mainScreen].bounds.size.width;
    float h = [UIScreen mainScreen].bounds.size.height;
    
    MPMoviePlayerController *player = [[MPMoviePlayerController alloc] initWithContentURL:[NSURL URLWithString:aurl]];
    self.moviePlayer = player; [player release];
//    self.moviePlayer.controlStyle = MPMovieControlStyleNone;
    self.moviePlayer.controlStyle = MPMovieControlStyleDefault;
    [moviePlayer setFullscreen:YES animated:YES];
    
    [self installMovieNotificationObservers];
    self.moviePlayer.view.frame = CGRectMake(0, 0, h, w);
    [self.view addSubview:self.moviePlayer.view];
    [moviePlayer play];
    
        
}



-(void)update
{
    
    NSArray * events = moviePlayer.accessLog.events;
    int count = events.count;
    for (int i = 0; i<count; i++)
    {
        MPMovieAccessLogEvent * currentEvent = [events objectAtIndex:i];
        double byts = currentEvent.indicatedBitrate;
        int64_t byte = currentEvent.numberOfBytesTransferred;
        int64_t bytes = currentEvent.numberOfBytesTransferred >> 10;
        NSMutableString * strBytes = [[NSMutableString alloc] initWithCapacity:100];
        [strBytes appendFormat:@"totalSize = %lld byte",bytes];
        if (bytes > 1024) {
            bytes = bytes >> 10;
            [strBytes setString:@""];
            [strBytes appendFormat:@"total = %lld M",bytes];
        }
        NSLog(@"缓冲区大小 byte = %f M , 当前大小 %@ , 当前速度 = %lf",(float)byte/(1024*1024) , strBytes , byts/1024);
    }
    

    
    [self performSelector:@selector(update) withObject:nil afterDelay:0.05];
}















-(void)removeMovieViewFromViewHierarchy
{
	[self.moviePlayer.view removeFromSuperview];
}













































@end




























































