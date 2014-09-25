//
//  UIView+Animation.m
//  KrinkleIt
//
//  Created by Sean Jensen on 9/11/14.
//  Copyright (c) 2014 Me. All rights reserved.
//

#import "UIView+Animation.h"

@implementation UIView (Animation)
- (void) addSubviewWithZoomInAnimation:(UIView*)view duration:(float)secs option:(UIViewAnimationOptions)option
{
    CGAffineTransform trans = CGAffineTransformScale(view.transform, 0.01, 0.01);
    view.transform = trans;
    [self addSubview:view];
    [UIView animateWithDuration:secs delay:0.0 options:option
                     animations:^{
                         view.transform = CGAffineTransformScale(view.transform, 100.0, 100.0);
                     }
                     completion:nil];

}

- (void) removeWithZoomOutAnimation:(float)secs option:(UIViewAnimationOptions)option
{
	[UIView animateWithDuration:secs delay:0.0 options:option
                     animations:^{
                         self.transform = CGAffineTransformScale(self.transform, 0.01, 0.01);
                     }
                     completion:^(BOOL finished) {
                         [self removeFromSuperview];
                     }];
    
}

- (void) circularRemoveZoomOutAnimation:(UIView*)view duration:(float)secs option:(UIViewAnimationOptions)option
{
    view.layer.cornerRadius = view.frame.size.width/2;
    view.layer.masksToBounds = YES;
    [UIView animateWithDuration:secs delay:0.0 options:option
                     animations:^{
                         self.transform = CGAffineTransformScale(self.transform, 0.01, 0.01);
                     }
                     completion:^(BOOL finished) {
                         [self removeFromSuperview];
                     }];

}

- (void) circularZoomInAnimation:(UIView*)view duration:(float)secs option:(UIViewAnimationOptions)option
{
    view.layer.cornerRadius = view.frame.size.width/2;
    view.layer.masksToBounds = YES;
    CGAffineTransform trans = CGAffineTransformScale(view.transform, 0.01, 0.01);
    view.transform = trans;
    [self addSubview:view];
    [UIView animateWithDuration:secs delay:0.0 options:option
                     animations:^{
                         view.transform = CGAffineTransformScale(view.transform, 100.0, 100.0);
                     }
                     completion:nil];
    
}

@end
