//
//  AddContactViewController.m
//  AddressB
//
//  Created by Greg Tropino on 4/22/14.
//  Copyright (c) 2014 Greg Tropino. All rights reserved.
//

#import "AddContactViewController.h"

@interface AddContactViewController ()

@end

@implementation AddContactViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _txtFldFirstNameACVC.text = _holderFirstNameACVC;
    _txtFldLastNameACVC.text = _holderLastNameACVC;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

- (IBAction)pressedFinishedACVC:(id)sender
{
    [_delegate passFirstName:_txtFldFirstNameACVC.text andLastName:_txtFldLastNameACVC.text];
}
@end
