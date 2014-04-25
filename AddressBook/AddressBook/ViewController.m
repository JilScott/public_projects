//
//  ViewController.m
//  AddressBook
//
//  Created by Jackie Scott on 4/25/14.
//  Copyright (c) 2014 Jilian Scott. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    _labelFirstName.text = _contactAtSelectedRow.firstName;
    _labelLastName.text = _contactAtSelectedRow.lastName;
    _txtFldFirstName.text = _contactAtSelectedRow.firstName;
    _txtFldLastName.text = _contactAtSelectedRow.lastName;
    
    _txtFldFirstName.hidden = YES;
    _txtFldLastName.hidden = YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pressedEdit:(id)sender
{
    _txtFldFirstName.hidden = NO;
    _txtFldLastName.hidden = NO;
    _labelFirstName.hidden = YES;
    _labelLastName.hidden = YES;
}

- (IBAction)pressedDone:(id)sender
{
    _txtFldFirstName.hidden = YES;
    _txtFldLastName.hidden = YES;
    _labelFirstName.hidden = NO;
    _labelLastName.hidden = NO;
    
    [_delegate passFirstName:_txtFldFirstName.text andLastName:_txtFldLastName.text withIndexPath:_contactAtSelectedRow.indexPathForSelectedRow];
}
@end
