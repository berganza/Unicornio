//
//  ViewController.h
//  Unicornio
//
//  Created by LLBER on 31/05/13.
//  Copyright (c) 2013 LLBER. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController


@property (nonatomic, strong) AVAudioPlayer *reproductor;


@property (strong, nonatomic) IBOutlet UIImageView *unicornio;


- (IBAction)trotar:(id)sender;










@end
