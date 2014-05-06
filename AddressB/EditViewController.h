//
//  EditViewController.h
//  AddressB
//
//  Created by Greg Tropino on 4/22/14.
//  Copyright (c) 2014 Greg Tropino. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"


@protocol EditContactDelegate

-(void) editExistingContactWithFirstName: (NSString *)firstName andLastName:(NSString *)lastName;

@end

@interface EditViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *labelFirstNameEVC;
@property (strong, nonatomic) NSString *holderFirstName;
@property (strong, nonatomic) NSString *holderLastName;

@property (weak, nonatomic) IBOutlet UILabel *labelLastNameEVC;

@property (strong, nonatomic) id <EditContactDelegate> delegate;


@end
