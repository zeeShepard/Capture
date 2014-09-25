//
//  DescriptionPopup.m
//  KrinkleIt
//
//  Created by Sean Jensen on 9/11/14.
//  Copyright (c) 2014 Me. All rights reserved.
//

#import "DescriptionPopup.h"
//#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>


@interface DescriptionPopup ()

@end

@implementation DescriptionPopup

+ (id) newDescriptionPopup
{
    UINib *nib = [UINib nibWithNibName:@"DescriptionPopup" bundle:nil];
    NSArray *nibArray = [nib instantiateWithOwner:self options:nil];
    DescriptionPopup *me = [nibArray objectAtIndex: 0];
    return me;
}


- (IBAction)doneButton {
    emailDescription = self.descriptionText.text;

    [self removeWithZoomOutAnimation:1.0 option:UIViewAnimationOptionCurveEaseInOut];
    
}
@end
