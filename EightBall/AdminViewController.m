#import "AdminViewController.h"
#import "AppDelegate.h"

@interface AdminViewController () <UITableViewDelegate,UITableViewDataSource>

@property(strong,nonatomic)AppDelegate *appDelegate;

@end

@implementation AdminViewController

-(IBAction)cancel:(UIStoryboardSegue *)segue {
}

-(IBAction)done:(UIStoryboardSegue *)segue {
    NSIndexPath *indexPath;
    [(UITableView *)self.view
       insertRowsAtIndexPaths:@[indexPath]
             withRowAnimation:UITableViewRowAnimationAutomatic];
}
-(void)viewDidLoad{
    [super viewDidLoad];
    self.appDelegate = [UIApplication sharedApplication].delegate;
}
#pragma mark - Table view data source
-(NSInteger)tableView:(UITableView *)tableView
numberOfRowsInSection:(NSInteger)section {
    return self.appDelegate.answerCount;
}

-(UITableViewCell *)tableView:(UITableView *)tableView
        cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    cell.textLabel.text = [self.appDelegate answerAtIndex:indexPath.row];
    return cell;
}
-(void)  tableView:(UITableView *)tableView
commitEditingStyle:(UITableViewCellEditingStyle)editingStyle
 forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.appDelegate deleteAnswerAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath]
                         withRowAnimation:UITableViewRowAnimationFade];
    }
}
@end
