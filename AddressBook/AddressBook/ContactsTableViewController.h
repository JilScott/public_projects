//
//  ContactsTableViewController.h
//  AddressBook
//
//  Created by Jackie Scott on 4/25/14.
//  Copyright (c) 2014 Jilian Scott. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Contact.h"
#import "AddContactViewController.h"
#import "ViewController.h"

@interface ContactsTableViewController : UITableViewController <doneEditingDelegate, addNewContactDelegate>

@end
