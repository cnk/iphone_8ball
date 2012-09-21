//
//  AnswerViewController.m
//  EightBall
//
//  Created by Johnathan Pulos on 9/13/12.
//  Copyright (c) 2012 Johnathan Pulos. All rights reserved.
//

#import "AnswerViewController.h"
#import "AppDelegate.h"

@interface AnswerViewController ()
@property (strong, nonatomic) IBOutlet UILabel *answerLabel;

@end

@implementation AnswerViewController

-(void)setAnswerText
{
    AppDelegate *appDelegate = [UIApplication sharedApplication].delegate;
    NSArray *answers = appDelegate.answersArray;
    int rndIndex = arc4random()%answers.count;
    self.answerLabel.text = answers[rndIndex];
}

- (BOOL)canBecomeFirstResponder {
    return YES;
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self becomeFirstResponder];
    [self setAnswerText];
}

-(void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    if (motion == UIEventSubtypeMotionShake) {
        [self setAnswerText];
    }
}
@end
