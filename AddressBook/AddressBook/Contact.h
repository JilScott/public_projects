//
//  Contact.h
//  AddressBook
//
//  Created by Jackie Scott on 4/25/14.
//  Copyright (c) 2014 Jilian Scott. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property (strong,nonatomic) NSString *firstName;
@property (strong, nonatomic) NSString *lastName;
@property int indexPathForSelectedRow;



@end
