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
    NSArray *answers = @[@"Yes!", @"No!", @"Ask Again!", @"Maybe!"];
    int rndIndex = arc4random()%[answers count];
    if (motion == UIEventSubtypeMotionShake) {
        [self setAnswerText:answers[rndIndex]];
    }
}

@end
