//
//  ViewController.h
//  AddressBook
//
//  Created by Jackie Scott on 4/25/14.
//  Copyright (c) 2014 Jilian Scott. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Contact.h"

@protocol doneEditingDelegate

- (void) passFirstName: (NSString *)firstName andLastName: (NSString *)lastName withIndexPath: (int)indexPath;

@end

@interface ViewController : UIViewController <UITextFieldDelegate>


- (IBAction)pressedEdit:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *labelFirstName;
@property (weak, nonatomic) IBOutlet UILabel *labelLastName;
- (IBAction)pressedDone:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *txtFldFirstName;
@property (weak, nonatomic) IBOutlet UITextField *txtFldLastName;
@property (strong, nonatomic) Contact *contactAtSelectedRow;
@property (strong, nonatomic) id <doneEditingDelegate> delegate;





@end
