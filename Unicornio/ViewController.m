//
//  ViewController.m
//  Unicornio
//
//  Created by LLBER on 31/05/13.
//  Copyright (c) 2013 LLBER. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize unicornio, reproductor;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)trotar:(id)sender {
    
    //Movimiento
    unicornio.animationImages = [NSArray arrayWithObjects:
                                 [UIImage imageNamed:@"Unicornio1.png"],
                                 [UIImage imageNamed:@"Unicornio2.png"],
                                 [UIImage imageNamed:@"Unicornio3.png"],
                                 [UIImage imageNamed:@"Unicornio4.png"],
                                 [UIImage imageNamed:@"Unicornio5.png"],
                                 [UIImage imageNamed:@"Unicornio6.png"],
                                 [UIImage imageNamed:@"Unicornio7.png"],
                                 [UIImage imageNamed:@"Unicornio8.png"],nil];
    
    unicornio.animationDuration = 1;
    
    [unicornio startAnimating];
    
    
    
    
    //Traslación
    [UIView beginAnimations:@"avancedAnimations" context:nil];
    [UIView setAnimationDuration:10];
    
    CGRect unicornioFrame = unicornio.frame;
    
    unicornioFrame.origin.x = -150;
    unicornioFrame.origin.y = 100;
    
    unicornio.frame = unicornioFrame;
    [UIView commitAnimations];
    
    
    
    
    //Sonido
    NSString * ruta = [[NSBundle mainBundle] pathForResource:@"HORSE" ofType:@"mp3"];
    NSURL * url = [[NSURL alloc] initFileURLWithPath:ruta];
    
    self.reproductor = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
    
    [self.reproductor prepareToPlay];
    
    [self.reproductor play];
    
    
    
}



@end
