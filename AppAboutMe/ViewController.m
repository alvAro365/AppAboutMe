//
//  ViewController.m
//  AppAboutMe
//
//  Created by Alvar Aronija on 13/01/2018.
//  Copyright © 2018 Alvar Aronija. All rights reserved.
//

#import "ViewController.h"
#import "SettingsViewController.h"



@interface ViewController ()
@property (nonatomic) UIColor* background;

@end

@implementation ViewController



- (IBAction)unWindToMainPage:(UIStoryboardSegue *)segue {
    
    SettingsViewController *source = [segue sourceViewController];
    SettingsViewController *settings = [[SettingsViewController alloc] init];
    if(!settings.redSwitch.on) {
        self.view.backgroundColor = [UIColor redColor];
        
    }
    
    
    self.view.backgroundColor= [SettingsViewController userBackground];
    
}




- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
