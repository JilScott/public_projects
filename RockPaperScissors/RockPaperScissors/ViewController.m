//
//  ViewController.m
//  RockPaperScissors
//
//  Created by Greg Tropino on 3/26/14.
//  Copyright (c) 2014 Greg Tropino. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

int scoreUser;
int scoreComp;
int selectionTracker;
int compSelection;
- (void)viewDidLoad
{
    [super viewDidLoad];

    scoreUser = 0;
    scoreComp = 0;
    selectionTracker = 0;
    
    
    // show both user and computer score tallys. Have reset button to start both players score back to 0. after every game show who is winner/loser and whether they had rock paper scissors.
}




- (IBAction)pressedGo:(id)sender

{
    compSelection = arc4random() % 3;
    
    if (compSelection == 0)
    {
        _labelCompSelection.text = @"Rock";
    }
    else if (compSelection == 1)
    {
        _labelCompSelection.text = @"Paper";
    }
    else if (compSelection ==2)
    {
        _labelCompSelection.text = @"Scissors";
    }
    //comp rock
    if (compSelection == 0)
    {
        if (selectionTracker == 0)
        {
            _imageWinner.image = [UIImage imageNamed:@"deadLock.jpeg"];
        }
        else if (selectionTracker == 1)
        {
            _imageWinner.image = [UIImage imageNamed:@"YouWin.png"];
            scoreUser++;
            _labelUserScore.text =[NSString stringWithFormat: @"%i", scoreUser];
        }
        else if (selectionTracker == 2)
        {
            _imageWinner.image = [UIImage imageNamed:@"youLose.jpg"];
            scoreComp++;
             _labelCompScore.text =[NSString stringWithFormat: @"%i", scoreComp];
        }
    }
    //comp paper
    if (compSelection == 1)
    {
        if (selectionTracker == 0)
        {
            _imageWinner.image = [UIImage imageNamed:@"youLose.jpg"];
            scoreComp++;
            _labelCompScore.text =[NSString stringWithFormat: @"%i", scoreComp];
        }
        else if (selectionTracker == 1)
        {
            _imageWinner.image = [UIImage imageNamed:@"deadLock.jpeg"];
        }
        else if (selectionTracker == 2)
        {
            _imageWinner.image = [UIImage imageNamed:@"YouWin.png"];
            scoreUser++;
            _labelUserScore.text =[NSString stringWithFormat: @"%i", scoreUser];
        }
    }
    //comp scissors
    if (compSelection == 2)
    {
        if (selectionTracker == 0)
        {
            _imageWinner.image = [UIImage imageNamed:@"YouWin.png"];
            scoreUser++;
            _labelUserScore.text =[NSString stringWithFormat: @"%i", scoreUser];
        }
        else if (selectionTracker == 1)
        {
            _imageWinner.image = [UIImage imageNamed:@"youLose.jpg"];
            scoreComp++;
            _labelCompScore.text =[NSString stringWithFormat: @"%i", scoreComp];
        }
        else if (selectionTracker == 2)
        {
            _imageWinner.image = [UIImage imageNamed:@"deadLock.jpeg"];
        }
    }


}

- (IBAction)pressedReset:(id)sender
{
    scoreComp = 0;
    scoreUser = 0;
    _labelCompSelection.text = @"Computer Selection";
    _labelUserScore.text =[NSString stringWithFormat: @"%i", scoreUser];
    _labelCompScore.text =[NSString stringWithFormat: @"%i", scoreComp];
    _imageWinner.image = [UIImage imageNamed:@"null"];
    
}
- (IBAction)pressedUserSelection:(id)sender
{
    if (selectionTracker == 0)
    {
        [sender setTitle:@"Paper" forState:UIControlStateNormal];
        selectionTracker = 1;
    }
    else if (selectionTracker == 1)
    {
        [sender setTitle:@"Scissors" forState:UIControlStateNormal];
        selectionTracker = 2;
    }
    else if (selectionTracker == 2)
    {
        [sender setTitle:@"Rock" forState:UIControlStateNormal];
        selectionTracker = 0;
    }
}



//0 rock 1 paper 2 sciss









@end
