//
//  ViewController.m
//  ColorClicker
//
//  Created by Jackie Scott on 4/30/14.
//  Copyright (c) 2014 Jilian Scott. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self colorRotationOne];
	
    for (UIView *view in self.view.subviews)
    {
        if ([view isKindOfClass:[ColorView class]])
        {
            ColorView *tempObject = (ColorView *)view;
            tempObject.delegate = self;
        }
    }
}

-(void)passViewTag:(NSInteger)viewTag
{
    
    for (UIView *view in self.view.subviews)
    {
        if ([view isKindOfClass:[ColorView class]])
        {
            if (viewTag == 1)
            {
                [self colorRotationOne];
            }
            if (viewTag == 2)
            {
                [self colorRotationTwo];
            }
            if (viewTag == 3)
            {
                [self colorRotationThree];
            }
            if (viewTag == 4)
            {
                [self colorRotationFour];
            }
            if (viewTag == 5)
            {
                [self colorRotationFive];
            }
            if (viewTag == 6)
            {
                [self colorRotationSix];
            }
            if (viewTag == 7)
            {
                [self colorRotationSeven];
            }
            if (viewTag == 8)
            {
                [self colorRotationEight];
            }
            if (viewTag == 9)
            {
                [self colorRotationNine];
            }
            if (viewTag == 10)
            {
                [self colorRotationTen];
            }
        }
    }
}

-(void)colorRotationOne
{
    for (UIView *view in self.view.subviews)
    {
        if ([view isKindOfClass:[ColorView class]])
        {
            if (view.tag == 1)
            {
                view.backgroundColor = [UIColor colorWithRed:202/255. green:46/255. blue:113/255. alpha:1.0];
            }
            if (view.tag == 2)
            {
                view.backgroundColor = [UIColor colorWithRed:190/255. green:46/255. blue:117/255. alpha:1.0];
            }
            if (view.tag == 3)
            {
                view.backgroundColor = [UIColor colorWithRed:178/255. green:45/255. blue:121/255. alpha:1.0];
            }
            if (view.tag == 4)
            {
                view.backgroundColor = [UIColor colorWithRed:166/255. green:45/255. blue:125/255. alpha:1.0];
            }
            if (view.tag == 5)
            {
                view.backgroundColor = [UIColor colorWithRed:155/255. green:44/255. blue:129/255. alpha:1.0];
            }
            if (view.tag == 6)
            {
                view.backgroundColor = [UIColor colorWithRed:143/255. green:44/255. blue:134/255. alpha:1.0];
            }
            if (view.tag == 7)
            {
                view.backgroundColor = [UIColor colorWithRed:131/255. green:44/255. blue:138/255. alpha:1.0];
            }
            if (view.tag == 8)
            {
                view.backgroundColor = [UIColor colorWithRed:119/255. green:43/255. blue:142/255. alpha:1.0];
            }
            if (view.tag == 9)
            {
                view.backgroundColor = [UIColor colorWithRed:107/255. green:43/255. blue:146/255. alpha:1.0];
            }
            if (view.tag == 10)
            {
                view.backgroundColor = [UIColor colorWithRed:95/255. green:42/255. blue:151/255. alpha:1.0];
            }
        }
    }
}

-(void)colorRotationTwo
{
    for (UIView *view in self.view.subviews)
    {
        if ([view isKindOfClass:[ColorView class]])
        {
            if (view.tag == 2)
            {
                view.backgroundColor = [UIColor colorWithRed:202/255. green:46/255. blue:113/255. alpha:1.0];
            }
            if (view.tag == 3)
            {
                view.backgroundColor = [UIColor colorWithRed:190/255. green:46/255. blue:117/255. alpha:1.0];
            }
            if (view.tag == 4)
            {
                view.backgroundColor = [UIColor colorWithRed:178/255. green:45/255. blue:121/255. alpha:1.0];
            }
            if (view.tag == 5)
            {
                view.backgroundColor = [UIColor colorWithRed:166/255. green:45/255. blue:125/255. alpha:1.0];
            }
            if (view.tag == 6)
            {
                view.backgroundColor = [UIColor colorWithRed:155/255. green:44/255. blue:129/255. alpha:1.0];
            }
            if (view.tag == 7)
            {
                view.backgroundColor = [UIColor colorWithRed:143/255. green:44/255. blue:134/255. alpha:1.0];
            }
            if (view.tag == 8)
            {
                view.backgroundColor = [UIColor colorWithRed:131/255. green:44/255. blue:138/255. alpha:1.0];
            }
            if (view.tag == 9)
            {
                view.backgroundColor = [UIColor colorWithRed:119/255. green:43/255. blue:142/255. alpha:1.0];
            }
            if (view.tag == 10)
            {
                view.backgroundColor = [UIColor colorWithRed:107/255. green:43/255. blue:146/255. alpha:1.0];
            }
            if (view.tag == 1)
            {
                view.backgroundColor = [UIColor colorWithRed:95/255. green:42/255. blue:151/255. alpha:1.0];
            }
        }
    }
}

-(void)colorRotationThree
{
    for (UIView *view in self.view.subviews)
    {
        if ([view isKindOfClass:[ColorView class]])
        {
            if (view.tag == 3)
            {
                view.backgroundColor = [UIColor colorWithRed:202/255. green:46/255. blue:113/255. alpha:1.0];
            }
            if (view.tag == 4)
            {
                view.backgroundColor = [UIColor colorWithRed:190/255. green:46/255. blue:117/255. alpha:1.0];
            }
            if (view.tag == 5)
            {
                view.backgroundColor = [UIColor colorWithRed:178/255. green:45/255. blue:121/255. alpha:1.0];
            }
            if (view.tag == 6)
            {
                view.backgroundColor = [UIColor colorWithRed:166/255. green:45/255. blue:125/255. alpha:1.0];
            }
            if (view.tag == 7)
            {
                view.backgroundColor = [UIColor colorWithRed:155/255. green:44/255. blue:129/255. alpha:1.0];
            }
            if (view.tag == 8)
            {
                view.backgroundColor = [UIColor colorWithRed:143/255. green:44/255. blue:134/255. alpha:1.0];
            }
            if (view.tag == 9)
            {
                view.backgroundColor = [UIColor colorWithRed:131/255. green:44/255. blue:138/255. alpha:1.0];
            }
            if (view.tag == 10)
            {
                view.backgroundColor = [UIColor colorWithRed:119/255. green:43/255. blue:142/255. alpha:1.0];
            }
            if (view.tag == 1)
            {
                view.backgroundColor = [UIColor colorWithRed:107/255. green:43/255. blue:146/255. alpha:1.0];
            }
            if (view.tag == 2)
            {
                view.backgroundColor = [UIColor colorWithRed:95/255. green:42/255. blue:151/255. alpha:1.0];
            }
        }
    }
}
-(void)colorRotationFour
{
    for (UIView *view in self.view.subviews)
    {
        if ([view isKindOfClass:[ColorView class]])
        {
            if (view.tag == 4)
            {
                view.backgroundColor = [UIColor colorWithRed:202/255. green:46/255. blue:113/255. alpha:1.0];
            }
            if (view.tag == 5)
            {
                view.backgroundColor = [UIColor colorWithRed:190/255. green:46/255. blue:117/255. alpha:1.0];
            }
            if (view.tag == 6)
            {
                view.backgroundColor = [UIColor colorWithRed:178/255. green:45/255. blue:121/255. alpha:1.0];
            }
            if (view.tag == 7)
            {
                view.backgroundColor = [UIColor colorWithRed:166/255. green:45/255. blue:125/255. alpha:1.0];
            }
            if (view.tag == 8)
            {
                view.backgroundColor = [UIColor colorWithRed:155/255. green:44/255. blue:129/255. alpha:1.0];
            }
            if (view.tag == 9)
            {
                view.backgroundColor = [UIColor colorWithRed:143/255. green:44/255. blue:134/255. alpha:1.0];
            }
            if (view.tag == 10)
            {
                view.backgroundColor = [UIColor colorWithRed:131/255. green:44/255. blue:138/255. alpha:1.0];
            }
            if (view.tag == 1)
            {
                view.backgroundColor = [UIColor colorWithRed:119/255. green:43/255. blue:142/255. alpha:1.0];
            }
            if (view.tag == 2)
            {
                view.backgroundColor = [UIColor colorWithRed:107/255. green:43/255. blue:146/255. alpha:1.0];
            }
            if (view.tag == 3)
            {
                view.backgroundColor = [UIColor colorWithRed:95/255. green:42/255. blue:151/255. alpha:1.0];
            }
        }
    }
}
-(void)colorRotationFive
{
    for (UIView *view in self.view.subviews)
    {
        if ([view isKindOfClass:[ColorView class]])
        {
            if (view.tag == 5)
            {
                view.backgroundColor = [UIColor colorWithRed:202/255. green:46/255. blue:113/255. alpha:1.0];
            }
            if (view.tag == 6)
            {
                view.backgroundColor = [UIColor colorWithRed:190/255. green:46/255. blue:117/255. alpha:1.0];
            }
            if (view.tag == 7)
            {
                view.backgroundColor = [UIColor colorWithRed:178/255. green:45/255. blue:121/255. alpha:1.0];
            }
            if (view.tag == 8)
            {
                view.backgroundColor = [UIColor colorWithRed:166/255. green:45/255. blue:125/255. alpha:1.0];
            }
            if (view.tag == 9)
            {
                view.backgroundColor = [UIColor colorWithRed:155/255. green:44/255. blue:129/255. alpha:1.0];
            }
            if (view.tag == 10)
            {
                view.backgroundColor = [UIColor colorWithRed:143/255. green:44/255. blue:134/255. alpha:1.0];
            }
            if (view.tag == 1)
            {
                view.backgroundColor = [UIColor colorWithRed:131/255. green:44/255. blue:138/255. alpha:1.0];
            }
            if (view.tag == 2)
            {
                view.backgroundColor = [UIColor colorWithRed:119/255. green:43/255. blue:142/255. alpha:1.0];
            }
            if (view.tag == 3)
            {
                view.backgroundColor = [UIColor colorWithRed:107/255. green:43/255. blue:146/255. alpha:1.0];
            }
            if (view.tag == 4)
            {
                view.backgroundColor = [UIColor colorWithRed:95/255. green:42/255. blue:151/255. alpha:1.0];
            }
        }
    }
}
-(void)colorRotationSix
{
    for (UIView *view in self.view.subviews)
    {
        if ([view isKindOfClass:[ColorView class]])
        {
            if (view.tag == 6)
            {
                view.backgroundColor = [UIColor colorWithRed:202/255. green:46/255. blue:113/255. alpha:1.0];
            }
            if (view.tag == 7)
            {
                view.backgroundColor = [UIColor colorWithRed:190/255. green:46/255. blue:117/255. alpha:1.0];
            }
            if (view.tag == 8)
            {
                view.backgroundColor = [UIColor colorWithRed:178/255. green:45/255. blue:121/255. alpha:1.0];
            }
            if (view.tag == 9)
            {
                view.backgroundColor = [UIColor colorWithRed:166/255. green:45/255. blue:125/255. alpha:1.0];
            }
            if (view.tag == 10)
            {
                view.backgroundColor = [UIColor colorWithRed:155/255. green:44/255. blue:129/255. alpha:1.0];
            }
            if (view.tag == 1)
            {
                view.backgroundColor = [UIColor colorWithRed:143/255. green:44/255. blue:134/255. alpha:1.0];
            }
            if (view.tag == 2)
            {
                view.backgroundColor = [UIColor colorWithRed:131/255. green:44/255. blue:138/255. alpha:1.0];
            }
            if (view.tag == 3)
            {
                view.backgroundColor = [UIColor colorWithRed:119/255. green:43/255. blue:142/255. alpha:1.0];
            }
            if (view.tag == 4)
            {
                view.backgroundColor = [UIColor colorWithRed:107/255. green:43/255. blue:146/255. alpha:1.0];
            }
            if (view.tag == 5)
            {
                view.backgroundColor = [UIColor colorWithRed:95/255. green:42/255. blue:151/255. alpha:1.0];
            }
        }
    }
}
-(void)colorRotationSeven
{
    for (UIView *view in self.view.subviews)
    {
        if ([view isKindOfClass:[ColorView class]])
        {
            if (view.tag == 7)
            {
                view.backgroundColor = [UIColor colorWithRed:202/255. green:46/255. blue:113/255. alpha:1.0];
            }
            if (view.tag == 8)
            {
                view.backgroundColor = [UIColor colorWithRed:190/255. green:46/255. blue:117/255. alpha:1.0];
            }
            if (view.tag == 9)
            {
                view.backgroundColor = [UIColor colorWithRed:178/255.  green:45/255. blue:121/255. alpha:1.0];
            }
            if (view.tag == 10)
            {
                view.backgroundColor = [UIColor colorWithRed:166/255. green:45/255. blue:125/255. alpha:1.0];
            }
            if (view.tag == 1)
            {
                view.backgroundColor = [UIColor colorWithRed:155/255. green:44/255. blue:129/255. alpha:1.0];
            }
            if (view.tag == 2)
            {
                view.backgroundColor = [UIColor colorWithRed:143/255. green:44/255. blue:134/255. alpha:1.0];
            }
            if (view.tag == 3)
            {
                view.backgroundColor = [UIColor colorWithRed:131/255. green:44/255. blue:138/255. alpha:1.0];
            }
            if (view.tag == 4)
            {
                view.backgroundColor = [UIColor colorWithRed:119/255. green:43/255. blue:142/255. alpha:1.0];
            }
            if (view.tag == 5)
            {
                view.backgroundColor = [UIColor colorWithRed:107/255. green:43/255. blue:146/255. alpha:1.0];
            }
            if (view.tag == 6)
            {
                view.backgroundColor = [UIColor colorWithRed:95/255. green:42/255. blue:151/255. alpha:1.0];
            }
        }
    }
}
-(void)colorRotationEight
{
    for (UIView *view in self.view.subviews)
    {
        if ([view isKindOfClass:[ColorView class]])
        {
            if (view.tag == 8)
            {
                view.backgroundColor = [UIColor colorWithRed:202/255. green:46/255. blue:113/255. alpha:1.0];
            }
            if (view.tag == 9)
            {
                view.backgroundColor = [UIColor colorWithRed:190/255. green:46/255. blue:117/255. alpha:1.0];
            }
            if (view.tag == 10)
            {
                view.backgroundColor = [UIColor colorWithRed:178/255. green:45/255. blue:121/255. alpha:1.0];
            }
            if (view.tag == 1)
            {
                view.backgroundColor = [UIColor colorWithRed:166/255. green:45/255. blue:125/255. alpha:1.0];
            }
            if (view.tag == 2)
            {
                view.backgroundColor = [UIColor colorWithRed:155/255. green:44/255. blue:129/255. alpha:1.0];
            }
            if (view.tag == 3)
            {
                view.backgroundColor = [UIColor colorWithRed:143/255. green:44/255. blue:134/255. alpha:1.0];
            }
            if (view.tag == 4)
            {
                view.backgroundColor = [UIColor colorWithRed:131/255. green:44/255. blue:138/255. alpha:1.0];
            }
            if (view.tag == 5)
            {
                view.backgroundColor = [UIColor colorWithRed:119/255. green:43/255. blue:142/255. alpha:1.0];
            }
            if (view.tag == 6)
            {
                view.backgroundColor = [UIColor colorWithRed:107/255. green:43/255. blue:146/255. alpha:1.0];
            }
            if (view.tag == 7)
            {
                view.backgroundColor = [UIColor colorWithRed:95/255. green:42/255. blue:151/255. alpha:1.0];
            }
        }
    }
}
-(void)colorRotationNine
{
    for (UIView *view in self.view.subviews)
    {
        if ([view isKindOfClass:[ColorView class]])
        {
            if (view.tag == 9)
            {
                view.backgroundColor = [UIColor colorWithRed:202/255. green:46/255. blue:113/255. alpha:1.0];
            }
            if (view.tag == 10)
            {
                view.backgroundColor = [UIColor colorWithRed:190/255. green:46/255. blue:117/255. alpha:1.0];
            }
            if (view.tag == 1)
            {
                view.backgroundColor = [UIColor colorWithRed:178/255. green:45/255. blue:121/255. alpha:1.0];
            }
            if (view.tag == 2)
            {
                view.backgroundColor = [UIColor colorWithRed:166/255. green:45/255. blue:125/255. alpha:1.0];
            }
            if (view.tag == 3)
            {
                view.backgroundColor = [UIColor colorWithRed:155/255. green:44/255. blue:129/255. alpha:1.0];
            }
            if (view.tag == 4)
            {
                view.backgroundColor = [UIColor colorWithRed:143/255. green:44/255. blue:134/255. alpha:1.0];
            }
            if (view.tag == 5)
            {
                view.backgroundColor = [UIColor colorWithRed:131/255. green:44/255. blue:138/255. alpha:1.0];
            }
            if (view.tag == 6)
            {
                view.backgroundColor = [UIColor colorWithRed:119/255. green:43/255. blue:142/255. alpha:1.0];
            }
            if (view.tag == 7)
            {
                view.backgroundColor = [UIColor colorWithRed:107/255. green:43/255. blue:146/255. alpha:1.0];
            }
            if (view.tag == 8)
            {
                view.backgroundColor = [UIColor colorWithRed:95/255. green:42/255. blue:151/255. alpha:1.0];
            }
        }
    }
}
-(void)colorRotationTen
{
    for (UIView *view in self.view.subviews)
    {
        if ([view isKindOfClass:[ColorView class]])
        {
            if (view.tag == 10)
            {
                view.backgroundColor = [UIColor colorWithRed:202/255. green:46/255. blue:113/255. alpha:1.0];
            }
            if (view.tag == 1)
            {
                view.backgroundColor = [UIColor colorWithRed:190/255. green:46/255. blue:117/255. alpha:1.0];
            }
            if (view.tag == 2)
            {
                view.backgroundColor = [UIColor colorWithRed:178/255. green:45/255. blue:121/255. alpha:1.0];
            }
            if (view.tag == 3)
            {
                view.backgroundColor = [UIColor colorWithRed:166/255. green:45/255. blue:125/255. alpha:1.0];
            }
            if (view.tag == 4)
            {
                view.backgroundColor = [UIColor colorWithRed:155/255. green:44/255. blue:129/255. alpha:1.0];
            }
            if (view.tag == 5)
            {
                view.backgroundColor = [UIColor colorWithRed:143/255. green:44/255. blue:134/255. alpha:1.0];
            }
            if (view.tag == 6)
            {
                view.backgroundColor = [UIColor colorWithRed:131/255. green:44/255. blue:138/255. alpha:1.0];
            }
            if (view.tag == 7)
            {
                view.backgroundColor = [UIColor colorWithRed:119/255. green:43/255. blue:142/255. alpha:1.0];
            }
            if (view.tag == 8)
            {
                view.backgroundColor = [UIColor colorWithRed:107/255. green:43/255. blue:146/255. alpha:1.0];
            }
            if (view.tag == 9)
            {
                view.backgroundColor = [UIColor colorWithRed:95/255. green:42/255. blue:151/255. alpha:1.0];
            }
        }
    }
}

- (IBAction)pressedColorChangerWithDelay:(UIButton*)sender
{
    [self endlessColorLoop];
    sender.hidden = YES;
}

-(void)endlessColorLoop
{
    [self performSelector:@selector(colorRotationOne) withObject:nil afterDelay:.50];
    [self performSelector:@selector(colorRotationTwo) withObject:nil afterDelay:1.50];
    [self performSelector:@selector(colorRotationThree) withObject:nil afterDelay:2.50];
    [self performSelector:@selector(colorRotationFour) withObject:nil afterDelay:3.50];
    [self performSelector:@selector(colorRotationFive) withObject:nil afterDelay:4.50];
    [self performSelector:@selector(colorRotationSix) withObject:nil afterDelay:5.50];
    [self performSelector:@selector(colorRotationSeven) withObject:nil afterDelay:6.50];
    [self performSelector:@selector(colorRotationEight) withObject:nil afterDelay:7.50];
    [self performSelector:@selector(colorRotationNine) withObject:nil afterDelay:8.50];
    [self performSelector:@selector(colorRotationTen) withObject:nil afterDelay:9.50];
    [self performSelector:@selector(endlessColorLoop) withObject:nil afterDelay:10.50];
}
@end
