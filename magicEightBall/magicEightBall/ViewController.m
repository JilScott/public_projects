//
//  ViewController.m
//  magicEightBall
//
//  Created by Greg Tropino on 3/31/14.
//  Copyright (c) 2014 Greg Tropino. All rights reserved.
//

#import "ViewController.h"


@implementation ViewController

{
    NSDictionary *dictionaryRepsonses;
    NSArray *arrayKeys;
}
//arraay of keys. randomize array numeric POSTITIOSN to pull out diff keys employee ID to unlock name
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    dictionaryRepsonses = @{
                            @"1": @"response1",
                            @"2":@"response2",
                            @"3":@"response3"
                            };
    arrayKeys = @[@"1", @"2", @"3"];
    //0-100 3 fzz buzz 5 both fizzbuzz if none just state number
    
    for (int x=1; x<100; x++)
    {
        if ((x%3 == 0) && !(x %5 == 0))
        {
            NSLog(@"fizz");
        }
        else if ((x % 5 == 0) && !(x %3 == 0))
        {
            NSLog(@"buzz");
        }
        else if ((x % 3 == 0) && (x % 5 == 0))
        {
            NSLog(@"fizzbuzz");
        }
        else if ( !(x%3 == 0) && !(x%5 == 0))
        {
            NSLog(@"%i",x);
        }
        
    }
       //call on me eric sszefofn
}

- (IBAction)pressedAsk:(id)sender
{

    _labelAnswer.text = dictionaryRepsonses [arrayKeys[arc4random()%3]];
   

}


@end
