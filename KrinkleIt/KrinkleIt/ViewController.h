//
//  ViewController.h
//  KrinkleIt
//
//  Created by Zack Shepard on 8/28/14.
//  Copyright (c) 2014 Me. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreImage/CoreImage.h>
#import "DescriptionPopup.h"
#import "UIView+Animation.h"
#import "MailSentPopup.h"

NSString *emailDescription;

int counter;
int clearCount;

UIImage *image;


UIImageView *imageViewOne;
UIImageView *imageViewTwo;
UIImageView *imageViewThree;
UIImageView *imageViewFour;

NSMutableArray *imageViewArray;


@interface ViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextFieldDelegate>



@property (strong, nonatomic) IBOutlet UIImageView *imageView;


- (IBAction)camera:(id)sender;

- (IBAction)sendEmail:(id)sender;
- (IBAction)clear:(id)sender;

-(IBAction)tapScreen:(id)sender;

- (IBAction)addDescription:(id)sender;



@end
