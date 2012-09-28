#import "AnswerFormViewController.h"
#import "AppDelegate.h"

@interface AnswerFormViewController () <UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *answerTextField;
@property (strong, nonatomic) AppDelegate *appDelegate;
@end

@implementation AnswerFormViewController
- (void)viewDidLoad{
    [super viewDidLoad];
    self.appDelegate = [UIApplication sharedApplication].delegate;
    self.answerTextField.text = [self.appDelegate answerAtIndex:self.answerIndex];
    [self.answerTextField becomeFirstResponder];
}
#pragma UITextFieldDelegate Methods
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}
@end
