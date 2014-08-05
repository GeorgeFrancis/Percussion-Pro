//
//  SoundPlayer.h
//  BongoGuru
//
//  Created by Mark Bridges on 22/07/2014.
//  Copyright (c) 2014 GeorgeFrancis. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface SoundPlayer : NSObject

@property (nonatomic) float volume;

- (void)playSoundAtURL:(NSURL*)soundURL;

- (void)playSoundAtURL:(NSURL*)soundURL atVolume:(float)volume;

@end