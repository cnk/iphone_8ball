//
//  AnswerViewController.m
//  EightBall
//
//  Created by Johnathan Pulos on 9/13/12.
//  Copyright (c) 2012 Johnathan Pulos. All rights reserved.
//

#import "AnswerViewController.h"

@interface AnswerViewController ()
@property (strong, nonatomic) IBOutlet UILabel *answerLabel;

@end

@implementation AnswerViewController

-(void)setAnswerText
{
    NSArray *answers = @[   @"It is certain.",
    @"It is decidedly so.",
    @"Without a doubt.",
    @"Yes – definitely.",
    @"You may rely on it.",
    @"As I see it, yes.",
    @"Most likely.",
    @"Outlook good.",
    @"Yes.",
    @"Signs point to yes.",
    @"Reply hazy, try again.",
    @"Ask again later.",
    @"Better not tell you now.",
    @"Cannot predict now.",
    @"Concentrate and ask again.",
    @"Don't count on it.",
    @"My reply is no.",
    @"My sources say no.",
    @"Outlook not so good.",
    @"Very doubtful"];
    int rndIndex = arc4random()%[answers count];
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
