//
//  ViewController.m
//  LocalNotificationApp
//
//  Created by Tops on 12/28/15.
//  Copyright (c) 2015 Tops. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize txt_msg,dt_pkr;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btn_action:(id)sender
{
    UILocalNotification *local=[[UILocalNotification alloc]init];
    local.fireDate=[NSDate dateWithTimeIntervalSinceNow:20];
    local.alertBody=@"Hello Notification";
    local.timeZone=[NSTimeZone defaultTimeZone];
    local.soundName=UILocalNotificationDefaultSoundName;
    local.applicationIconBadgeNumber=[[UIApplication sharedApplication]applicationIconBadgeNumber]+1;
    
    
    [[UIApplication sharedApplication]scheduleLocalNotification:local];
    
    [self.navigationController popViewControllerAnimated:YES];
}
@end
