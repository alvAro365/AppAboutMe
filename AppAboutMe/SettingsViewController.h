//
//  SettingsViewController.h
//  AppAboutMe
//
//  Created by Alvar Aronija on 14/01/2018.
//  Copyright © 2018 Alvar Aronija. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface SettingsViewController : UIViewController


+(UIColor*) userBackground;

@property (weak, nonatomic) IBOutlet UISwitch *blueSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *greenSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *redSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *blackSwitch;


@end
