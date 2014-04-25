//
//  AddContactViewController.h
//  AddressBook
//
//  Created by Jackie Scott on 4/25/14.
//  Copyright (c) 2014 Jilian Scott. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Contact.h"


@protocol addNewContactDelegate

-(void) addContactWithFirstName: (NSString *)firstName andLastName: (NSString *)lastName;

@end


@interface AddContactViewController : UIViewController


- (IBAction)pressedDoneAdding:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *txtFieldFirstNameAdd;
@property (weak, nonatomic) IBOutlet UITextField *txtFieldLastNameAdd;
@property (strong, nonatomic) id <addNewContactDelegate> delegate;







@end
