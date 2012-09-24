#import "AdminViewController.h"
#import "AppDelegate.h"

@interface AdminViewController () <UITableViewDelegate>

@property(strong,nonatomic)AppDelegate *appDelegate;

@end

@implementation AdminViewController

-(void)viewDidLoad {
    ((UITableView *)self.view).dataSource =
        (id<UITableViewDataSource>)[UIApplication sharedApplication].delegate;
}

@end
