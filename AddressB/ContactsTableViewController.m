//
//  ContactsTableViewController.m
//  AddressB
//
//  Created by Greg Tropino on 4/22/14.
//  Copyright (c) 2014 Greg Tropino. All rights reserved.
//

#import "ContactsTableViewController.h"
#import "EditViewController.h"
#import "AddContactViewController.h"

@interface ContactsTableViewController ()

@end

@implementation ContactsTableViewController
{
    NSMutableArray *arrayContactList;
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
    
    Person *contact;
    arrayContactList = [[NSMutableArray alloc] init];
    
    contact = [[Person alloc]init];
    contact.firstName = @"Greg";
    contact.lastName = @"Trophy";
    [arrayContactList addObject:contact];
    
    contact = [[Person alloc]init];
    contact.firstName = @"Jilian";
    contact.lastName = @"Scooter";
    [arrayContactList addObject:contact];
    
    contact = [[Person alloc]init];
    contact.firstName = @"Vinny";
    contact.lastName = @"PooPoo";
    [arrayContactList addObject:contact];
    
    [self loadData];
    
    
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
    return [arrayContactList count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    if (!cell)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@ %@",((Person*)[arrayContactList objectAtIndex:indexPath.row]).firstName, ((Person*)[arrayContactList objectAtIndex:indexPath.row]).lastName];
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
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



// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"EVC"])
    {
        
    EditViewController *evc = [segue destinationViewController];
        evc.delegate =self;
    evc.holderFirstName = ((Person*)[arrayContactList objectAtIndex:self.tableView.indexPathForSelectedRow.row]).firstName;
    evc.holderLastName = ((Person*)[arrayContactList objectAtIndex:self.tableView.indexPathForSelectedRow.row]).lastName;
    }
    else if ([segue.identifier isEqualToString:@"ACVC"])
    {
        AddContactViewController *acvc = [segue destinationViewController];
        acvc.delegate = self;
    }

}
-(void)passFirstName:(NSString *)firstName andLastName:(NSString *)lastName
{
    Person *contact = [[Person alloc] init];
    contact.firstName = firstName;
    contact.lastName = lastName;
    [arrayContactList addObject:contact];
    [self.tableView reloadData];
    [self.navigationController popViewControllerAnimated:YES];
    [self saveData];

}
- (NSString *) getFilePath
{
    NSArray *pathArray = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    return [[pathArray objectAtIndex:0]stringByAppendingPathComponent:@"saved.plist"];
}
-(void) saveData
{
    NSMutableArray *value = arrayContactList;
    [value writeToFile:[self getFilePath] atomically:YES];
}

-(void) loadData
{
    NSString *myPath = [self getFilePath];
    BOOL fileExists = [[NSFileManager defaultManager] fileExistsAtPath:myPath];
    if (fileExists)
    {
        arrayContactList = [[NSMutableArray alloc] initWithContentsOfFile:myPath];
        //refill properties with contents of saved data from array
        
    }
    [self.tableView reloadData];
    //CALL saveData & loadData FROM AppDelegate.m METHOD applicationWillEnterForeground & applicationDidEnterBackground
}

@end
