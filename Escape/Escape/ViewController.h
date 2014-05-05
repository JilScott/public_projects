//
//  ViewController.h
//  Escape
//
//  Created by Greg Tropino on 4/17/14.
//  Copyright (c) 2014 Greg Tropino. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Photo.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imagePhoto;
@property (strong, nonatomic) Photo *photoFile;

- (IBAction)pressedMoreInfo:(id)sender;

@end
