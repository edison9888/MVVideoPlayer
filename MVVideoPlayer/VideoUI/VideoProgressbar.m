//
//  VideoProgressbar.m
//  MVVideoPlayer
//
//  Created by apple on 13-6-6.
//  Copyright (c) 2013年 apple. All rights reserved.
//

#import "VideoProgressbar.h"

#define sliderOriginValue 11

@implementation VideoProgressbar
@synthesize slider;
@synthesize thumbImage;
@synthesize cacheView;

- (void)dealloc
{
    [slider release];
    [thumbImage release];
    [cacheView release];
    [super dealloc];
}


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        slider = [[ UISlider alloc ] initWithFrame:CGRectMake(0, -sliderOriginValue, frame.size.width, frame.size.height)];
        [slider setThumbImage:[[[UIImage alloc] init] autorelease] forState:0];
//        UIImage *thumb = [UIImage imageNamed:@"VideoProgressbarThumb.png"];
        UIImage *maximumTrack = [UIImage imageNamed:@"VideoProgressbarMaximumTrack.png"];
        UIImage *minimumTrack = [UIImage imageNamed:@"VideoProgressbarMinimumTrack.png"];
        
        
//        [slider setThumbImage:thumb forState:UIControlStateNormal];
        [slider setMaximumTrackImage:maximumTrack forState:UIControlStateNormal];
        [slider setMinimumTrackImage:minimumTrack forState:UIControlStateNormal];
        
        [slider setTranslatesAutoresizingMaskIntoConstraints:NO];
        
        //设置 Slider 相关触发事件
        [slider addTarget:self action:@selector(moving) forControlEvents: UIControlEventTouchDragInside];
        [slider addTarget:self action:@selector(moveExit) forControlEvents: UIControlEventTouchDragInside];
        [self addSubview:slider];

        
        {
            thumbImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"VideoProgressbarThumb.png"]];
            thumbImage.frame = CGRectMake(-sliderOriginValue, -sliderOriginValue, thumbImage.frame.size.width, thumbImage.frame.size.height);
            thumbImage.userInteractionEnabled = YES;
            [self addSubview:thumbImage];
        }
        
        
        {
            cacheView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"VideoProgressbarBuffer.png"]];
            cacheView.frame = CGRectMake(0, 0, 10, cacheView.frame.size.height);
            [self addSubview:cacheView];
        }
        
        
        [self sliderInitData:200];
        
    }
    return self;
}


-(void) moving
{
    float w = slider.value * slider.frame.size.width/slider.maximumValue;
    thumbImage.frame = CGRectMake(w-sliderOriginValue, -sliderOriginValue, thumbImage.frame.size.width, thumbImage.frame.size.height);

}

-(void) moveExit
{
    float w = slider.value * slider.frame.size.width/slider.maximumValue;
    thumbImage.frame = CGRectMake(w-sliderOriginValue, -sliderOriginValue, thumbImage.frame.size.width, thumbImage.frame.size.height);

}


#pragma mark 设置 slider 最大值 和 最小值位0
-(void) sliderInitData:(float) maximumValue
{
    slider.maximumValue = maximumValue ;
    slider.minimumValue = 0 ;
}



-(void) changeSliderValue:(float)value
{
    slider.value = value;
    [self moving];
}


@end
























































