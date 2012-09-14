//
//  ViewController.m
//  EightBall
//
//  Created by Johnathan Pulos on 9/6/12.
//  Copyright (c) 2012 Johnathan Pulos. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)setAnswerText:(NSString*)newText
{
    self.answerLabel.text = newText;
}
- (BOOL)canBecomeFirstResponder {
    return YES;
}

- (void)viewDidAppear:(BOOL)animated {
    [self becomeFirstResponder];
}

-(void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
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
    if (motion == UIEventSubtypeMotionShake) {
        [self setAnswerText:answers[rndIndex]];
    }
}

@end
