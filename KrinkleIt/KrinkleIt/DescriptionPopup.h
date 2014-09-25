//
//  DescriptionPopup.h
//  KrinkleIt
//
//  Created by Sean Jensen on 9/11/14.
//  Copyright (c) 2014 Me. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIView+Animation.h"

@interface DescriptionPopup : UIView <UITextFieldDelegate>

+ (id) newDescriptionPopup;

@property (strong, nonatomic) IBOutlet UITextView *descriptionText;
- (IBAction)doneButton;

@end
