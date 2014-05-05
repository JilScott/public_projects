//
//  ViewController.h
//  CardMatchingGame
//
//  Created by Jilian Scott on 4/26/14.
//  Copyright (c) 2014 Jilian Scott. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Card.h"

@interface ViewController : UIViewController <cardTouchedDelegate>

- (IBAction)pressedReset:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *buttonReset;

@end
