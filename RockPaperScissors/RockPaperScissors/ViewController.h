//
//  ViewController.h
//  RockPaperScissors
//
//  Created by Greg Tropino on 3/26/14.
//  Copyright (c) 2014 Greg Tropino. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *labelCompSelection;
@property (weak, nonatomic) IBOutlet UILabel *labelCompScore;
@property (weak, nonatomic) IBOutlet UILabel *labelUserScore;
- (IBAction)pressedUserSelection:(id)sender;

@property (weak, nonatomic) IBOutlet UIImageView *imageWinner;
- (IBAction)pressedGo:(id)sender;
- (IBAction)pressedReset:(id)sender;














@end
