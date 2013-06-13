//
//  VideoView.h
//  MVVideoPlayer
//
//  Created by apple on 13-6-4.
//  Copyright (c) 2013年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>



typedef enum
{
    V_Down,
    V_Up,
}VideoUIEventType;


@interface VideoView : UIView
{
    CGRect                      touchRange;
    UIImageView                 *background;        //背景
    UIButton                    *button;
}



@property(nonatomic,assign)CGRect touchRange;
@property(nonatomic,retain)UIImageView *background;
@property(nonatomic,retain)UIButton *button;


- (id)initWithFrame:(CGRect)aFrame touchRange:(CGRect )aTouchRange;

- (id)initWithFrame:(CGRect)aFrame touchRange:(CGRect )aTouchRange image:(UIImage *)aImage;


- (void)customLayout;



- (void)addTarget:(id)target action:(SEL)action eventType:(VideoUIEventType )type;


- (BOOL) touchResponse:(CGPoint)point;



@end
