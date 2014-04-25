//
//  ContactsTableViewController.m
//  AddressBook
//
//  Created by Jackie Scott on 4/25/14.
//  Copyright (c) 2014 Jilian Scott. All rights reserved.
//

#import "ContactsTableViewController.h"


@interface ContactsTableViewController ()

@end

@implementation ContactsTableViewController
{
    NSMutableArray *arrayContacts;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    arrayContacts = [[NSMutableArray alloc] init];
    
    Contact *newContact = [[Contact alloc]init];
    newContact.firstName = @"Jilian";
    newContact.lastName = @"Scott";
    [arrayContacts addObject:newContact];
    
    newContact = [[Contact alloc]init];
    newContact.firstName = @"Greg";
    newContact.lastName = @"Tropino";
    [arrayContacts addObject:newContact];
    
    newContact = [[Contact alloc]init];
    newContact.firstName = @"Bob";
    newContact.lastName = @"Smith";
    [arrayContacts addObject:newContact];
    
    newContact = [[Contact alloc]init];
    newContact.firstName = @"John";
    newContact.lastName = @"Doe";
    [arrayContacts addObject:newContact];
    
    newContact = [[Contact alloc]init];
    newContact.firstName = @"Katelin";
    newContact.lastName = @"Burke";
    [arrayContacts addObject:newContact];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [arrayContacts count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    if (!cell)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"%@ %@",((Contact *)[arrayContacts objectAtIndex:indexPath.row]).firstName, ((Contact *)[arrayContacts objectAtIndex:indexPath.row]).lastName];
    return cell;
}

/*

// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

- (void)passFirstName:(NSString *)firstName andLastName:(NSString *)lastName withIndexPath:(int)indexPath
{
    ((Contact *)(arrayContacts[indexPath])).firstName = firstName;
    ((Contact *)(arrayContacts[indexPath])).lastName = lastName;
    [self.navigationController popViewControllerAnimated:YES];
    [self.tableView reloadData];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"EditContactSegue"])
    {
        ViewController *vc = [segue destinationViewController];
        vc.contactAtSelectedRow =[arrayContacts objectAtIndex:self.tableView.indexPathForSelectedRow.row];
        vc.delegate = self;
        vc.contactAtSelectedRow.indexPathForSelectedRow = self.tableView.indexPathForSelectedRow.row;
    }
    
    
    else if ([segue.identifier isEqualToString:@"AddContactSegue"])
    {
        AddContactViewController *acvc = [segue destinationViewController];
        acvc.delegate = self;
    }
  
    // Pass the selected object to the new view controller.
}

-(void)addContactWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName
{
    Contact *newContact = [[Contact alloc]init];
    newContact.firstName = firstName;
    newContact.lastName = lastName;
    [arrayContacts addObject:newContact];
    [self.tableView reloadData];
    [self.navigationController popViewControllerAnimated:YES];
}

@end
