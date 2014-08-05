//
//  SoundPlayer.m
//  BongoGuru
//
//  Created by Mark Bridges on 22/07/2014.
//  Copyright (c) 2014 GeorgeFrancis. All rights reserved.
//

//#import "SoundPlayer.h"
//#import <AVFoundation/AVFoundation.h>
//
//@interface SoundPlayer ()
//
//@property NSMutableArray *audioPlayers;
//
//@end
//
//@implementation SoundPlayer
//
//- (void)playSoundAtURL:(NSURL*)soundURL
//{
//    AVAudioPlayer *freePlayer = [self freeAudioPlayerForURL:soundURL];
//    [freePlayer play];
//}
//
//- (AVAudioPlayer*)freeAudioPlayerForURL:(NSURL*)url
//{
//    if (self.audioPlayers == nil)
//    {
//        self.audioPlayers = [[NSMutableArray alloc]init];
//    }
//    
//    for (AVAudioPlayer *audioPlayer in self.audioPlayers)
//    {
//        if ([audioPlayer.url.absoluteString isEqualToString:url.absoluteString] && audioPlayer.isPlaying == FALSE)
//        {
//            NSLog(@"Using existing player");
//            return audioPlayer;
//        }
//    }
//    
//    NSError *error;
//    
//    AVAudioPlayer *newPlayer =  [[AVAudioPlayer alloc]initWithContentsOfURL:url error:&error];
//    if (error) {
//        NSLog(@"Error making player: %@", error.localizedDescription);
//    }
//    [newPlayer prepareToPlay];
//    
//    [self.audioPlayers addObject:newPlayer];
//    
//    NSLog(@"Using new player");
//    
//    return newPlayer;
//}
//
//
//
//@end

#import "SoundPlayer.h"
#import <AVFoundation/AVFoundation.h>

@interface SoundPlayer ()

@property NSMutableArray *audioPlayers;

@end

@implementation SoundPlayer

- (float)volume
{
    if (_volume == 0)
    {
        _volume = 1;
    }
    return _volume;
}

- (void)playSoundAtURL:(NSURL*)soundURL
{
    AVAudioPlayer *freePlayer = [self freeAudioPlayerForURL:soundURL];
    freePlayer.volume = self.volume;
    [freePlayer play];
}

- (void)playSoundAtURL:(NSURL*)soundURL atVolume:(float)volume
{
    AVAudioPlayer *freePlayer = [self freeAudioPlayerForURL:soundURL];
    freePlayer.volume = volume;
    [freePlayer play];
}

- (AVAudioPlayer*)freeAudioPlayerForURL:(NSURL*)url
{
    if (self.audioPlayers == nil)
    {
        self.audioPlayers = [[NSMutableArray alloc]init];
    }
    
    for (AVAudioPlayer *audioPlayer in self.audioPlayers)
    {
        if ([audioPlayer.url.absoluteString isEqualToString:url.absoluteString] && audioPlayer.isPlaying == FALSE)
        {
            NSLog(@"Using existing player");
            return audioPlayer;
        }
    }
    
    NSError *error;
    
    AVAudioPlayer *newPlayer =  [[AVAudioPlayer alloc]initWithContentsOfURL:url error:&error];
    if (error) {
        NSLog(@"Error making player: %@", error.localizedDescription);
    }
    [newPlayer prepareToPlay];
    
    [self.audioPlayers addObject:newPlayer];
    
    NSLog(@"Using new player");
    
    return newPlayer;
}

@end
