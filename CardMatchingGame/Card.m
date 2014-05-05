//
//  Card.m
//  CardMatchingGame
//
//  Created by Jilian Scott on 4/26/14.
//  Copyright (c) 2014 Jilian Scott. All rights reserved.
//

#import "Card.h"

@implementation Card

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [Card beginAnimations:nil context:NULL];
    [Card setAnimationDuration:.25];
    [Card setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:self cache:YES];
    [Card commitAnimations];
    
    if (self.tag == 1)
    {
        UIGraphicsBeginImageContext(self.frame.size);
        [[UIImage imageNamed:@"sailor1.jpg"] drawInRect:self.bounds];
        UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        self.backgroundColor = [UIColor colorWithPatternImage:image];
    }
    else if (self.tag == 2)
    {
        UIGraphicsBeginImageContext(self.frame.size);
        [[UIImage imageNamed:@"sailor2.jpg"] drawInRect:self.bounds];
        UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        self.backgroundColor = [UIColor colorWithPatternImage:image];
    }
    else if (self.tag == 3)
    {
        UIGraphicsBeginImageContext(self.frame.size);
        [[UIImage imageNamed:@"sailor3.jpg"] drawInRect:self.bounds];
        UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        self.backgroundColor = [UIColor colorWithPatternImage:image];
    }
    else if (self.tag == 4)
    {
        UIGraphicsBeginImageContext(self.frame.size);
        [[UIImage imageNamed:@"sailor4.jpg"] drawInRect:self.bounds];
        UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        self.backgroundColor = [UIColor colorWithPatternImage:image];
    }
    else if (self.tag == 5)
    {
        UIGraphicsBeginImageContext(self.frame.size);
        [[UIImage imageNamed:@"sailor5.jpg"] drawInRect:self.bounds];
        UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        self.backgroundColor = [UIColor colorWithPatternImage:image];
    }
    else if (self.tag == 6)
    {
        UIGraphicsBeginImageContext(self.frame.size);
        [[UIImage imageNamed:@"sailor6.jpg"] drawInRect:self.bounds];
        UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        self.backgroundColor = [UIColor colorWithPatternImage:image];
    }
    [_delegate cardTouched:self];
}



@end
