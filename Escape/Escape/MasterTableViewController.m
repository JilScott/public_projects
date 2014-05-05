//
//  MasterTableViewController.m
//  Escape
//
//  Created by Greg Tropino on 4/17/14.
//  Copyright (c) 2014 Greg Tropino. All rights reserved.
//

#import "MasterTableViewController.h"
#import "Photo.h"
#import "ViewController.h"

@interface MasterTableViewController ()

@end

@implementation MasterTableViewController
{
    NSMutableArray *arrayPhotos;
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
    
    arrayPhotos = [[NSMutableArray alloc]init];
    
    Photo *pic = [[Photo alloc]init];
    pic.imageTitle = @"Walkway";
    pic.details = @"A lighted walkway in Translyvania. Take me there.";
    pic.photo = [UIImage imageNamed:@"lights2.jpg"];
    
    [arrayPhotos addObject:pic];
    
    pic = [[Photo alloc]init];
    pic.imageTitle = @"Bokeh";
    pic.details = @"A wonderful piece of abstract Bokeh. Jilian's favorite style of photography.";
    pic.photo = [UIImage imageNamed:@"lights.jpg"];
    
    [arrayPhotos addObject:pic];
    
    pic = [[Photo alloc]init];
    pic.imageTitle = @"Xmas";
    pic.details = @"Another Bokeh, this time with a star lense cover mix.";
    pic.photo = [UIImage imageNamed:@"large.jpg"];
    
    [arrayPhotos addObject:pic];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
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

    return [arrayPhotos count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    if (!cell)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = ((Photo *)[arrayPhotos objectAtIndex:indexPath.row]).imageTitle;
    NSLog(@"%@",((Photo *)[arrayPhotos objectAtIndex:indexPath.row]).imageTitle);
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


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ViewController *vc = [segue destinationViewController];
    vc.photoFile = [arrayPhotos objectAtIndex:self.tableView.indexPathForSelectedRow.row];
}


@end
