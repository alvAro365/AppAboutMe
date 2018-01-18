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


@end

@implementation ViewController




- (IBAction)unWindToMainPage:(UIStoryboardSegue *)segue {

        
    self.view.backgroundColor= [SettingsViewController globalBackgroundColor];
    
    
}

- (IBAction)unWindBack:(UIStoryboardSegue *)segue {
    
    UIColor *currentBackground = self.view.backgroundColor;
    
    [SettingsViewController setGlobalBackground:currentBackground];
    
    
}




- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor= [SettingsViewController globalBackgroundColor];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
