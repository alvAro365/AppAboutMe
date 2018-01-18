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
    
    defaultColor = [UIColor blackColor];
    
    if(globalBackground == nil) {
        globalBackground = [UIColor blackColor];
        self.view.backgroundColor = globalBackground;
        [self.blackSwitch setOn:YES animated:YES];
    } else {
        [self setSwitchOn:globalBackground];
        self.view.backgroundColor = globalBackground;
    }


}


- (IBAction)switchChanged:(UISwitch*)sender {
    
    if(![sender isOn]) {
        globalBackground = [UIColor blackColor];
        self.view.backgroundColor = globalBackground;
        [self.blackSwitch setOn:YES animated:YES];
    }
    [self checkSwitches:sender];
    

    
    
}



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

-(void)setSwitchOff:(UISwitch*) activeSwitch{
    
    [activeSwitch setOn:NO animated:NO];
    
    
}

+(void)setGlobalBackground:(UIColor*) color {
    
    globalBackground = color;
    
}


+(UIColor*) globalBackgroundColor {
    
    return globalBackground;
}

+(UIColor*) defaultBackgroundColor {
    
    return defaultColor;
}



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
