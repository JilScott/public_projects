//
//  AddContactViewController.h
//  AddressB
//
//  Created by Greg Tropino on 4/22/14.
//  Copyright (c) 2014 Greg Tropino. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"

@protocol addVCDelegate

-(void)passFirstName:(NSString*)firstName andLastName:(NSString*)lastName;

@end
@interface AddContactViewController : UIViewController


- (IBAction)pressedFinishedACVC:(id)sender;

@property (strong, nonatomic) id <addVCDelegate> delegate;
@property (weak, nonatomic) IBOutlet UITextField *txtFldFirstNameACVC;
@property (strong, nonatomic) NSString *holderFirstNameACVC;
@property (strong, nonatomic) NSString *holderLastNameACVC;
@property (weak, nonatomic) IBOutlet UITextField *txtFldLastNameACVC;





@end
