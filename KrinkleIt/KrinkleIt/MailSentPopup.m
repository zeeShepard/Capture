//
//  MailSentPopup.m
//  KrinkleIt
//
//  Created by Sean Jensen on 9/12/14.
//  Copyright (c) 2014 Me. All rights reserved.
//

#import "MailSentPopup.h"
//#import "ViewController.h"

@implementation MailSentPopup

- (IBAction)mailSentTap:(id)sender {
    DescriptionPopup *theSubView = [DescriptionPopup newDescriptionPopup];
    [self circularRemoveZoomOutAnimation:theSubView duration:1.0 option:UIViewAnimationOptionCurveEaseInOut];
    image = nil;
    
    counter = 1;
    clearCount = 0;
    
    imageViewOne.image = nil;
    imageViewTwo.image = nil;
    imageViewThree.image = nil;
    imageViewFour.image = nil;
    
    for (UIImageView *w in imageViewArray) {
        [w removeFromSuperview];
    }
    
}

+ (id) MailSentPopup
{
    UINib *nib = [UINib nibWithNibName:@"MailSentPopup" bundle:nil];
    NSArray *nibArray = [nib instantiateWithOwner:self options:nil];
    MailSentPopup *me = [nibArray objectAtIndex: 0];
    
        return me;
}

@end
