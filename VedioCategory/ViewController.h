//
//  ViewController.h
//  VedioCategory
//
//  Created by yishain on 8/10/15.
//  Copyright (c) 2015 yishain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MediaPlayer.h>


@interface ViewController : UIViewController
{
    AVAudioPlayer *player;
}
@property (strong, nonatomic) MPMoviePlayerController *moviePlayerController;
-(IBAction)playMovie:(id)sender;
-(IBAction)playMusic:(id)sender;

@end

