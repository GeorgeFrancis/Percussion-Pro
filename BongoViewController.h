//
//  BongoViewController.h
//  percussion
//
//  Created by George Francis on 26/08/2014.
//  Copyright (c) 2014 GeorgeFrancis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MasterViewController.h"
#import "SoundPlayer.h"
#import <AVFoundation/AVFoundation.h>
#import <AudioToolbox/AudioToolbox.h>


@interface BongoViewController : UIViewController

@property (nonatomic, strong) SoundPlayer *soundPlayer;
@property NSURL *sound1URL;
@property NSURL *sound2URL;
@property NSURL *sound3URL;
@property NSURL *sound4URL;

- (IBAction)playbongo:(id)sender;

@end
