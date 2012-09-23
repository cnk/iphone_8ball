#import "AdminViewController.h"
#import "AppDelegate.h"

@interface AdminViewController () <UITableViewDelegate,UITableViewDataSource>

@property(strong,nonatomic)AppDelegate *appDelegate;

@end

@implementation AdminViewController

-(void)viewDidLoad {
    self.appDelegate = [UIApplication sharedApplication].delegate;
    NSSortDescriptor *sortOrder =
        [NSSortDescriptor sortDescriptorWithKey: @"self" ascending: YES];
    self.appDelegate.answersArray =
        [[self.appDelegate.answersArray
            sortedArrayUsingDescriptors: @[sortOrder]] mutableCopy];
}

#pragma mark - Table view data source
-(NSInteger)tableView:(UITableView *)tableView
numberOfRowsInSection:(NSInteger)section {
    return [self.appDelegate.answersArray count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView
        cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell =
        [tableView dequeueReusableCellWithIdentifier:CellIdentifier
                                        forIndexPath:indexPath];
    cell.textLabel.text = self.appDelegate.answersArray[indexPath.row];
    return cell;
}


-(void)tableView:(UITableView *)tableView
commitEditingStyle:(UITableViewCellEditingStyle)editingStyle
forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.appDelegate.answersArray removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
