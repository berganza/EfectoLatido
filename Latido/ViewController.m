//
//  ViewController.m
//  Latido
//
//  Created by LLBER on 16/08/13.
//  Copyright (c) 2013 Berganza. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

@synthesize latido;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    latido = [CALayer layer];
    latido.backgroundColor = [UIColor redColor].CGColor;
    latido.bounds = CGRectMake(0, 0, CGRectGetMidX(self.view.bounds), 200);
    latido.cornerRadius = 20;
    latido.position = self.view.center;
        [self.view.layer addSublayer:latido];
    
}



- (void)viewDidAppear:(BOOL)animated {
    CABasicAnimation *animacionLatido = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    animacionLatido.duration = .5;
    animacionLatido.toValue = @1.1f;
    animacionLatido.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    animacionLatido.autoreverses = YES;
    animacionLatido.repeatCount = FLT_MAX;
    
    [latido addAnimation:animacionLatido forKey:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
