//
//  ContactsTableViewController.h
//  AddressB
//
//  Created by Greg Tropino on 4/22/14.
//  Copyright (c) 2014 Greg Tropino. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"
#import "AddContactViewController.h"
#import "EditViewController.h"


@interface ContactsTableViewController : UITableViewController <addVCDelegate, EditContactDelegate>

@end
