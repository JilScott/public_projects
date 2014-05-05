//
//  ViewController.m
//  CardMatchingGame
//
//  Created by Jilian Scott on 4/26/14.
//  Copyright (c) 2014 Jilian Scott. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    float number;
    int previousTag;
    int missEvaluator;
    int matchesMade;
    int misses;
    int previousScore;
    Card *currentView;
    Card *pastView;
    Card *cardToFlip;
    Card *card2ToFlip;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    matchesMade = 0;
    missEvaluator = 0;
    _buttonReset.hidden = YES;
    
    for (UIView *view in self.view.subviews)
    {
        if ([view isKindOfClass:[Card class]])
        {
            Card *cardView = (Card*)view;
            UIGraphicsBeginImageContext(cardView.frame.size);
            [[UIImage imageNamed:@"sailorDef.png"] drawInRect:cardView.bounds];
            UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
            UIGraphicsEndImageContext();
            cardView.backgroundColor = [UIColor colorWithPatternImage:image];
            cardView.delegate = self;
        }
    }
}

-(void)cardTouched:(Card *)card
{
    currentView = card;
    //card.tag = one that got touched
    if (pastView != currentView)
    {
        if (card.tag == previousTag)
        {
            matchesMade++;
            previousTag = 0;
            missEvaluator = 0;
            currentView.userInteractionEnabled = NO;
            pastView.userInteractionEnabled = NO;
            pastView = currentView;
            if (matchesMade == 6)
            {
                _buttonReset.hidden = NO;
            }
        }
        else if (!previousTag) //null or == 0
        {
            missEvaluator++;
            pastView = currentView;
            previousTag = card.tag;
        }
        else
        {
            previousTag = card.tag;
            missEvaluator++;
        }
        if (missEvaluator == 2)
        {
            previousTag = 0;
            cardToFlip = currentView;
            card2ToFlip = pastView;
            [self performSelector:@selector(flipCardsBack) withObject:nil afterDelay:.5];
            missEvaluator = 0;
        }
    }
}

-(void)flipCardsBack
{
    UIGraphicsBeginImageContext(pastView.frame.size);
    [[UIImage imageNamed:@"sailorDef.png"] drawInRect:pastView.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    cardToFlip.backgroundColor = [UIColor colorWithPatternImage:image];
    card2ToFlip.backgroundColor = [UIColor colorWithPatternImage:image];
}

- (IBAction)pressedReset:(id)sender
{
    _buttonReset.hidden = YES;
    for (UIView *view in self.view.subviews)
    {
        if ([view isKindOfClass:[Card class]])
        {
            Card *cardView = (Card*)view;
            UIGraphicsBeginImageContext(cardView.frame.size);
            [[UIImage imageNamed:@"sailorDef.png"] drawInRect:cardView.bounds];
            UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
            UIGraphicsEndImageContext();
            cardView.backgroundColor = [UIColor colorWithPatternImage:image];
            cardView.userInteractionEnabled = YES;
        }
    }
}
@end
