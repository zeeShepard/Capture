//
//  SplashPopup.m
//  KrinkleIt
//
//  Created by Sean Jensen on 9/11/14.
//  Copyright (c) 2014 Me. All rights reserved.
//

#import "SplashPopup.h"

@implementation SplashPopup

+ (id) SplashPopup
{
    UINib *nib = [UINib nibWithNibName:@"SplashPopup" bundle:nil];
    NSArray *nibArray = [nib instantiateWithOwner:self options:nil];
    SplashPopup *me = [nibArray objectAtIndex: 0];
    return me;
}


@end
