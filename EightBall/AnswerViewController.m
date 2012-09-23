#import "AnswerViewController.h"
#import "AppDelegate.h"

@interface AnswerViewController ()

@property(strong,nonatomic)IBOutlet UILabel *answerLabel;
@property(strong,nonatomic)AppDelegate *appDelegate;

@end

@implementation AnswerViewController

-(BOOL)canBecomeFirstResponder {
    return YES;
}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self becomeFirstResponder];
    self.appDelegate = [UIApplication sharedApplication].delegate;
    self.answerLabel.text = self.appDelegate.answerText;
}

-(void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (motion == UIEventSubtypeMotionShake) {
        self.answerLabel.text = self.appDelegate.answerText;
    }
}
@end
