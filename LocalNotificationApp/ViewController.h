//
//  ViewController.h
//  LocalNotificationApp
//
//  Created by Tops on 12/28/15.
//  Copyright (c) 2015 Tops. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)btn_action:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *txt_msg;
@property (weak, nonatomic) IBOutlet UIDatePicker *dt_pkr;


@end

