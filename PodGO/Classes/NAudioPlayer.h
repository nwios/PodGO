//
//  NAudioPlayer.h
//  PodGO
//
//  Created by NAWAF DOSSARY on 7/26/16.
//  Copyright © 2016 NAWAF DOSSARY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

@interface NAudioPlayer : NSObject

@property (nonatomic, retain) AVAudioPlayer *audioPlayer;

- (void)initPlayer:(NSString*) audioFile fileExtension:(NSString*)fileExtension;
- (void)playAudio;
- (void)pauseAudio;
- (void)setCurrentAudioTime:(float)value;
- (float)getAudioDuration;
- (NSString*)timeFormat:(float)value;
- (NSTimeInterval)getCurrentAudioTime;

@end
