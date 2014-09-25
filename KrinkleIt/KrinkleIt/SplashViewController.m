//
//  SplashViewController.m
//  KrinkleIt
//
//  Created by Sean Jensen on 9/11/14.
//  Copyright (c) 2014 Me. All rights reserved.
//

#import "SplashViewController.h"
#import "SplashPopup.h"
#import "UIView+Animation.h"

@interface SplashViewController ()

@end

@implementation SplashViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    SplashPopup *theSubView = [SplashPopup SplashPopup];
    
	[self.view addSubviewWithZoomInAnimation:theSubView duration:1.0 option:UIViewAnimationOptionCurveEaseInOut];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
