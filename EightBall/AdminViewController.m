#import "AdminViewController.h"
#import "AppDelegate.h"

@interface AdminViewController () <UITableViewDelegate>

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
-(void)viewDidLoad {
    ((UITableView *)self.view).dataSource =
        (id<UITableViewDataSource>)[UIApplication sharedApplication].delegate;
}

@end
