//
//  UIView+Animation.h
//  KrinkleIt
//
//  Created by Sean Jensen on 9/11/14.
//  Copyright (c) 2014 Me. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"


@interface UIView (Animation)
- (void) addSubviewWithZoomInAnimation:(UIView*)view duration:(float)secs option:(UIViewAnimationOptions)option;
- (void) removeWithZoomOutAnimation:(float)secs option:(UIViewAnimationOptions)option;

- (void) circularRemoveZoomOutAnimation:(UIView*)view duration:(float)secs option:(UIViewAnimationOptions)option;
- (void) circularZoomInAnimation:(UIView*)view duration:(float)secs option:(UIViewAnimationOptions)option;
@end
