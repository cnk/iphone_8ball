#import "AnswerFormViewController.h"

@interface AnswerFormViewController ()
@property (strong, nonatomic) IBOutlet UITableViewCell *answerCell;
@end

@implementation AnswerFormViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.answerCell.textLabel.text = self.answerText;
}
@end
