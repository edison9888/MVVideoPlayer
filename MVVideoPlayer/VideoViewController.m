//
//  VideoViewController.m
//  MVVideoPlayer
//
//  Created by apple on 13-5-30.
//  Copyright (c) 2013年 apple. All rights reserved.
//

#import "VideoViewController.h"
#import "VideoNotification.h"

@interface VideoViewController ()

@end

@implementation VideoViewController
@synthesize moviePlayer;
@synthesize url;

- (void)dealloc
{
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
    }
    return self;
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    [UIApplication sharedApplication].statusBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
    self.view.backgroundColor = [UIColor redColor];
    [self createAndConfigurePlayerWithURL:self.url];
    
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}



-(void)viewDidAppear:(BOOL)animated
{
    float w = [UIScreen mainScreen].bounds.size.width;
    float h = [UIScreen mainScreen].bounds.size.height;
    
    self.view.frame = CGRectMake(0, 0, h, w);
}



-(void)createAndConfigurePlayerWithURL:(NSString *)aurl
{
    float w = [UIScreen mainScreen].bounds.size.width;
    float h = [UIScreen mainScreen].bounds.size.height;
    
    
    MPMoviePlayerController *player = [[MPMoviePlayerController alloc] initWithContentURL:[NSURL URLWithString:aurl]];
    self.moviePlayer = player; [player release];
    self.moviePlayer.controlStyle = MPMovieControlStyleNone;
//    self.moviePlayer.controlStyle = MPMovieControlStyleDefault;
    [moviePlayer setFullscreen:YES animated:YES];
    
    [self installMovieNotificationObservers];
    self.moviePlayer.view.frame = CGRectMake(0, 0, h, w);
    [self.view addSubview:self.moviePlayer.view];
    
    
    
    
    
    [moviePlayer play];
    
    
    
    
}


















-(void)removeMovieViewFromViewHierarchy
{
	[self.moviePlayer.view removeFromSuperview];
}













































@end




























































