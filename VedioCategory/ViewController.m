//
//  ViewController.m
//  VedioCategory
//
//  Created by yishain on 8/10/15.
//  Copyright (c) 2015 yishain. All rights reserved.
//

#import "ViewController.h"
#import <MediaPlayer/MediaPlayer.h>
@interface ViewController ()
{
    MPMoviePlayerController *moviePlayerController;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)playMovie:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"eric.mp4" ofType:nil];
    if(path)
    {
        NSURL *movieUrl = [NSURL fileURLWithPath:path];
        moviePlayerController = [[MPMoviePlayerController alloc]
                                 initWithContentURL:movieUrl];
        moviePlayerController.view.frame = CGRectMake(0, 0, 320, 460);
        [self.view addSubview:moviePlayerController.view];
        [moviePlayerController play];
    }
    UILocalNotification *localNotification = [[UILocalNotification alloc] init];
    NSDate *now = [NSDate date];
    NSDate *notiDate = [now dateByAddingTimeInterval:10];
    localNotification.fireDate = notiDate;
    localNotification.alertBody = @"加油,不要睡著了,不然彼得潘⽼老師會⼼心碎的!"; localNotification.soundName = UILocalNotificationDefaultSoundName; localNotification.applicationIconBadgeNumber = 1;
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
    localNotification.alertAction = @"⾒見超⼈人⼀一⾯面";
}

- (IBAction)playMusic:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"beep.mp3" ofType:nil];
    NSData *data = [NSData dataWithContentsOfFile:path];
    NSError *error;
    player = [[AVAudioPlayer alloc] initWithData:data error:&error];
    
    if(error == nil)
    {
        [player play];
        
    }
}

@end
