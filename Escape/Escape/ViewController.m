//
//  ViewController.m
//  Escape
//
//  Created by Greg Tropino on 4/17/14.
//  Copyright (c) 2014 Greg Tropino. All rights reserved.
//

#import "ViewController.h"
#import "PhotoDetailViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _imagePhoto.image = _photoFile.photo;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pressedMoreInfo:(id)sender
{
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    PhotoDetailViewController *pdvc = [segue destinationViewController];
    pdvc.details = _photoFile;
    pdvc.labelDetails.text = @"Hey look at me now!";
}
@end


