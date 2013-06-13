//
//  VideoProgressbar.h
//  MVVideoPlayer
//
//  Created by apple on 13-6-6.
//  Copyright (c) 2013年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VideoView.h"
@interface VideoProgressbar : VideoView
{
    UISlider					*slider;
    UIImageView                 *thumbImage;
    UIImageView                 *cacheView;
}


@property(nonatomic,retain)UISlider *slider;
@property(nonatomic,retain)UIImageView *thumbImage;
@property(nonatomic,retain)UIImageView *cacheView;

-(void) sliderInitData:(float) maximumValue;

-(void) changeSliderValue:(float)value;

@end



























































