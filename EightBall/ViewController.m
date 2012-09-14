//
//  ViewController.m
//  EightBall
//
//  Created by Johnathan Pulos on 9/6/12.
//  Copyright (c) 2012 Johnathan Pulos. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *eightBallImage;
@property (strong, nonatomic) IBOutlet UILabel *shakeMeLabel;

@end

@implementation ViewController

- (BOOL)canBecomeFirstResponder {
    return YES;
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self becomeFirstResponder];
}

-(void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    if (motion == UIEventSubtypeMotionShake) {
        [self performSegueWithIdentifier:@"goToAnswer" sender:self];
    }
}

@end
