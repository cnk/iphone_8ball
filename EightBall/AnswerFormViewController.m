#import "AnswerFormViewController.h"

@interface AnswerFormViewController ()
@property (strong, nonatomic) IBOutlet UITextField *answerTextField;
@end

@implementation AnswerFormViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.answerTextField.text = self.answerText;
}
@end
