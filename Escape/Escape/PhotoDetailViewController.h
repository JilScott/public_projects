//
//  PhotoDetailViewController.h
//  Escape
//
//  Created by Greg Tropino on 4/17/14.
//  Copyright (c) 2014 Greg Tropino. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Photo.h"
@interface PhotoDetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *labelDetails;

- (IBAction)pressedDone:(id)sender;

@property (strong, nonatomic) Photo *details;

@end
