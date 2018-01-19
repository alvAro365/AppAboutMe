//
//  SettingsViewController.m
//  AppAboutMe
//
//  Created by Alvar Aronija on 14/01/2018.
//  Copyright © 2018 Alvar Aronija. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@property (weak, nonatomic) IBOutlet UISwitch *blueSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *greenSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *redSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *blackSwitch;

@end

@implementation SettingsViewController
static UIColor* globalBackground = nil;
static UIColor* defaultColor = nil;

- (void)viewDidLoad {

    // Do any additional setup after loading the view.
    [super viewDidLoad];

    
    // if user has not chosen a background then it will be black by default
    if(globalBackground == nil) {
        globalBackground = [UIColor blackColor];
        self.view.backgroundColor = globalBackground;
        [self.blackSwitch setOn:YES animated:YES];
    } else {
        self.view.backgroundColor = globalBackground;
        [self setSwitchOn:globalBackground];
    }


}

// Handles switch

- (IBAction)switchChanged:(UISwitch*)sender {
    
    if(![sender isOn]) {
        globalBackground = [UIColor blackColor];
        self.view.backgroundColor = globalBackground;
        [self.blackSwitch setOn:YES animated:YES];
    }
    [self checkSwitches:sender];
    

    
    
}


// turns switch on after color
-(void)setSwitchOn:(UIColor*) switchColor {
    
    if(switchColor == [UIColor blueColor]) {
         [self.blueSwitch setOn:YES animated:YES];
    }else if (switchColor == [UIColor redColor]) {
        [self.redSwitch setOn:YES animated:YES];
    }else if (switchColor == [UIColor greenColor]) {
        [self.greenSwitch setOn:YES animated:YES];
    }else if (switchColor == [UIColor blackColor]) {
        [self.blackSwitch setOn:YES animated:YES];
    }
    
}


//sets switch off
-(void)setSwitchOff:(UISwitch*) activeSwitch{
    
    [activeSwitch setOn:NO animated:NO];
    
    
}

//set global background color
+(void)setGlobalBackground:(UIColor*) color {
    
    globalBackground = color;
    
}


+(UIColor*) globalBackgroundColor {
    
    return globalBackground;
}

// checks witch switch is on and sets background after the switch
-(UIColor*) checkSwitches:(UISwitch*) selectedSwitch {
    
    if(selectedSwitch == self.greenSwitch && self.greenSwitch.on) {
        
        [self setSwitchOff:self.blueSwitch];
        [self setSwitchOff:self.blackSwitch];
        [self setSwitchOff:self.redSwitch];
        
        globalBackground = [UIColor greenColor];
        self.view.backgroundColor = globalBackground;
        
        
        
        
    } else if (selectedSwitch == self.blueSwitch && self.blueSwitch.on) {
        
        [self setSwitchOff:self.greenSwitch];
        [self setSwitchOff:self.blackSwitch];
        [self setSwitchOff:self.redSwitch];
        
        
        
        globalBackground = [UIColor blueColor];
        self.view.backgroundColor = globalBackground;
        
    } else if (selectedSwitch == self.redSwitch && self.redSwitch.on) {
        
        [self setSwitchOff:self.blueSwitch];
        [self setSwitchOff:self.blackSwitch];
        [self setSwitchOff:self.greenSwitch];
        
        globalBackground = [UIColor redColor];
        self.view.backgroundColor = globalBackground;
    } else if (selectedSwitch == self.blackSwitch && self.blackSwitch.on) {
        
        [self setSwitchOff:self.blueSwitch];
        [self setSwitchOff:self.redSwitch];
        [self setSwitchOff:self.greenSwitch];
        globalBackground = [UIColor blackColor];
        self.view.backgroundColor = globalBackground;
    }
    
    return globalBackground;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

        






/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/




@end
