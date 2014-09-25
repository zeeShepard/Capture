//
//  ViewController.m
//  KrinkleIt
//
//  Created by Zack Shepard on 8/28/14.
//  Copyright (c) 2014 Me. All rights reserved.
//

#import "ViewController.h"
#import <MessageUI/MessageUI.h>

@interface ViewController () <MFMailComposeViewControllerDelegate>

@end

@implementation ViewController


int counter = 1;








int segueInt;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    imageViewArray = [[NSMutableArray alloc] init];
    
    UITapGestureRecognizer *screenTap = [[UITapGestureRecognizer alloc]
                                         initWithTarget:self
                                         action:@selector(tapScreen:)];
    [self.view addGestureRecognizer:screenTap];
    self.imageView.frame = CGRectMake(50,100,100,250);
    self.imageView.image = [UIImage imageNamed:@"Krinkle Tree.png"];
  
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}

- (IBAction)camera:(id)sender {
    UIImagePickerController *imagePicker;
    imagePicker = [[UIImagePickerController alloc] init];
    
    imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
    
    imagePicker.delegate = self;
    [self presentViewController:imagePicker animated:YES completion:^{
        
    }];
}

- (IBAction)sendEmail:(id)sender {
    if (imageViewOne.image != nil) {
        
        
       
        NSString *emailTitle = @"Krinkle";
        NSString *messageBody = emailDescription;//@"Tell us what you need, and we'll Krinkle It";
        NSArray *toRecipents = [NSArray arrayWithObject:@"Krinkle+Capture@accucode.com"];
        NSLog(@"%@", emailDescription);
        MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
        mc.mailComposeDelegate = self;
        [mc setSubject:emailTitle];
        [mc setMessageBody:messageBody isHTML:NO];
        [mc setToRecipients:toRecipents];
        
        UIImage *firstImage = imageViewOne.image;
        UIImage *secondImage = imageViewTwo.image;
        UIImage *thirdImage = imageViewThree.image;
        UIImage *fourthImage = imageViewFour.image;
        
        NSData *imageData = UIImageJPEGRepresentation(firstImage, 0.25);
        NSData *secondImageData = UIImageJPEGRepresentation(secondImage, 0.25);
        NSData *thirdImageData = UIImageJPEGRepresentation(thirdImage, 0.25);
        NSData *fourthImageData = UIImageJPEGRepresentation(fourthImage, 0.25);
        
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSString *filePath = [[paths objectAtIndex:0] stringByAppendingPathComponent:@"firstImage.jpeg"];
        NSString *filePathT = [[paths objectAtIndex:0] stringByAppendingPathComponent:@"secondImage.jpeg"];
        NSString *filePathThree = [[paths objectAtIndex:0] stringByAppendingPathComponent:@"thirdImage.jpeg"];
        NSString *filePathFour = [[paths objectAtIndex:0] stringByAppendingPathComponent:@"fourthImage.jpeg"];

        
        
        [imageData writeToFile:filePath atomically:YES];
        [secondImageData writeToFile:filePathT atomically:YES];
        [thirdImageData writeToFile:filePathThree atomically:YES];
        [fourthImageData writeToFile:filePathFour atomically:YES];

        [mc addAttachmentData:imageData mimeType:@"image/jpeg"   fileName:@"firstImage.jpeg"];
        [mc addAttachmentData:secondImageData mimeType:@"image/jpeg"   fileName:@"secondImage.jpeg"];
        [mc addAttachmentData:thirdImageData mimeType:@"image/jpeg" fileName:@"thirdImage.jpeg"];
        [mc addAttachmentData:fourthImageData mimeType:@"image/jpeg" fileName:@"fourthImage.jpeg"];
        
        [self presentViewController:mc animated:YES completion:NULL];
    }
}

- (IBAction)clear:(id)sender {

    image = nil;
    counter = 1;
    clearCount = 0;
    
    imageViewOne.image = nil;
    imageViewTwo.image = nil;
    imageViewThree.image = nil;
    imageViewFour.image = nil;
    
    for (UIImageView *v in imageViewArray) {
        [v removeFromSuperview];
    }
}

- (IBAction)tapScreen:(id)sender {
  
        
    CGPoint tapPoint = [sender locationInView:self.view];
    if (tapPoint.x < 150 && tapPoint.x > 50 &&  tapPoint.y > 100 && tapPoint.y < 225 && imageViewOne.image != nil) {
        if (imageViewTwo.image == nil) {
       
            clearCount = counter;
            counter = 1;
            UIImagePickerController *imagePicker;
            imagePicker = [[UIImagePickerController alloc] init];
            
            imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
            
            imagePicker.delegate = self;
            [self presentViewController:imagePicker animated:YES completion:^{
                
            }];
        }else{
       
        clearCount = counter;
        counter = 0;
        
        UIImagePickerController *imagePicker;
        imagePicker = [[UIImagePickerController alloc] init];
        
        imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
        
        imagePicker.delegate = self;
        [self presentViewController:imagePicker animated:YES completion:^{
            
        }];
        }
    }
    if (tapPoint.x >150 && tapPoint.x < 250 && tapPoint.y > 100 && tapPoint.y < 225 && imageViewTwo.image != nil) {
       
        clearCount = counter;
        counter = 2;

        UIImagePickerController *imagePicker;
        imagePicker = [[UIImagePickerController alloc] init];
        
        imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
        
        imagePicker.delegate = self;
        [self presentViewController:imagePicker animated:YES completion:^{
            
        }];
    }
    if (tapPoint.x < 150 && tapPoint.x > 50 && tapPoint.y > 225 && tapPoint.y < 350 && imageViewThree.image != nil) {
      
        clearCount = counter;
        counter = 3;
        
        UIImagePickerController *imagePicker;
        imagePicker = [[UIImagePickerController alloc] init];
        
        imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
        
        imagePicker.delegate = self;
        [self presentViewController:imagePicker animated:YES completion:^{
            
        }];
    }
    if (tapPoint.x < 250 && tapPoint.x > 150 && tapPoint.y > 225 && tapPoint.y < 350 && imageViewFour.image != nil) {
       
        clearCount = counter;
        counter = 4;
        
        UIImagePickerController *imagePicker;
        imagePicker = [[UIImagePickerController alloc] init];
        
        imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
        
        imagePicker.delegate = self;
        [self presentViewController:imagePicker animated:YES completion:^{
            
        }];
    }
    
}


- (void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    switch (result)
    {
        case MFMailComposeResultCancelled:
            NSLog(@"Mail cancelled");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"Mail saved");
            break;
        case MFMailComposeResultSent:
            NSLog(@"Mail sent");
            segueInt = 1;
           
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Mail sent failure: %@", [error localizedDescription]);
            break;
        default:
            break;
    }
    
    
    [self dismissViewControllerAnimated:YES completion:NULL];
    if (segueInt == 1) {
        MailSentPopup *MSSubView = [MailSentPopup MailSentPopup];
        MSSubView.center = self.imageView.center;
        [self.view circularZoomInAnimation:MSSubView duration:1.0 option:UIViewAnimationOptionCurveEaseInOut];
        segueInt = 0;
    }
   
}




- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
    
    

    UIImage *image = [[UIImage alloc]init];
    image = [info objectForKey:UIImagePickerControllerOriginalImage];
    
    if (counter == 1 ) {

            imageViewOne =[[UIImageView alloc] init ];
            imageViewOne.frame = CGRectMake(50,100,200,250);
            imageViewOne.image = image;
            [self.view addSubview:imageViewOne];
            [imageViewArray addObject:imageViewOne];
        }
    if (counter == 0 ) {

        imageViewOne =[[UIImageView alloc] init ];
        imageViewOne.frame = CGRectMake(50,100, 100, 125);
        imageViewOne.image = image;
        [self.view addSubview:imageViewOne];
        [imageViewArray addObject:imageViewOne];
    }

        if (counter == 2 ) {
            imageViewOne.frame = CGRectMake(50,100, 100, 125);
            imageViewTwo = [[UIImageView alloc] initWithFrame:CGRectMake(150, 100, 100, 125)];
            imageViewTwo.image = image;
            [self.view addSubview:imageViewTwo];
            [imageViewArray addObject:imageViewTwo];
        }
        
        if (counter ==3 )  {
            imageViewThree = [[UIImageView alloc] initWithFrame:CGRectMake(50, 225, 100, 125)];
            imageViewThree.image = image;
            [self.view addSubview:imageViewThree];
            [imageViewArray addObject:imageViewThree];
        }
        
        
        if (counter ==4 ) {
            //[imageViewFour removeFromSuperview];
            imageViewFour = [[UIImageView alloc] initWithFrame:CGRectMake(150, 225, 100, 125)];
            imageViewFour.image = image;
            [self.view addSubview:imageViewFour];
            [imageViewArray addObject:imageViewFour];
        }
    
    counter++;
    if (clearCount>counter) {
        counter = clearCount;
    }
}

-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];

    counter++;
    if (clearCount>counter) {
        counter = clearCount;
    }

}

- (void) getMFComposeBodyFieldViewFromView:(UIView *)view {
    for (UIView *item in view.subviews) {
        if ([[[item class] description] isEqualToString:@"MFComposeTextContentView"]) {
            
            break;
        }
        if([item.subviews count] > 0) {
            [self getMFComposeBodyFieldViewFromView:item];
        }
    }
}

- (IBAction)addDescription:(id)sender {
    DescriptionPopup *theSubView = [DescriptionPopup newDescriptionPopup];
	[self.view addSubviewWithZoomInAnimation:theSubView duration:1.0 option: UIViewAnimationOptionCurveEaseInOut];
}



@end
