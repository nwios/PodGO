//
//  NAudioPlayer.m
//  PodGO
//
//  Created by NAWAF DOSSARY on 7/26/16.
//  Copyright © 2016 NAWAF DOSSARY. All rights reserved.
//

#import "NAudioPlayer.h"

@implementation NAudioPlayer
- (void)initPlayer:(NSString*) audioFile fileExtension:(NSString*)fileExtension{
    NSURL *fileLocation = [[NSBundle mainBundle] URLForResource:audioFile withExtension:fileExtension];
    NSError *error;
    self.audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:fileLocation error:&error];
}

- (void)playAudio{
    [self.audioPlayer play];
}

- (void)pauseAudio{
    [self.audioPlayer pause];
}

- (NSString*)timeFormat:(float)value{
    float minuts = floor(lroundf(value)/60);
    float second = lroundf(value) - (minuts * 60);
    
    float roundSecond = lroundf(second);
    float roundMinuts = lroundf(minuts);
    
    NSString *time = [[NSString alloc] initWithFormat:@"%f:%02f",roundMinuts,roundSecond];
    
    return time;
}

- (void)setCurrentAudioTime:(float)value{
    [self.audioPlayer setCurrentTime:value];
}

- (float)getAudioDuration{
    return [self.audioPlayer duration];
}

- (NSTimeInterval)getCurrentAudioTime{
    return [self.audioPlayer currentTime];
}

@end
