//
//  ViewController.h
//  ColorClicker
//
//  Created by Jackie Scott on 4/30/14.
//  Copyright (c) 2014 Jilian Scott. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ColorView.h"

@interface ViewController : UIViewController <ViewTouchedDelegate>

- (IBAction)pressedColorChangerWithDelay:(id)sender;

@end
