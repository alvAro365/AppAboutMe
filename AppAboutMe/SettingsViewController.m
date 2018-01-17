//
//  SettingsViewController.m
//  AppAboutMe
//
//  Created by Alvar Aronija on 14/01/2018.
//  Copyright © 2018 Alvar Aronija. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()
@property (weak, nonatomic) IBOutlet UIBarButtonItem *onSaveButton;

@end

@implementation SettingsViewController
static UIColor* defaultBackground = nil;

- (void)viewDidLoad {
    
    // Do any additional setup after loading the view.
    [super viewDidLoad];
    
    if(defaultBackground!=nil) {
        
        [self setSwitchOn:defaultBackground];
        self.view.backgroundColor = defaultBackground;
    }else {
        
        [self.blackSwitch setOn:YES animated:YES];
        self.view.backgroundColor = [UIColor blackColor];
        
    }
 //   [self.blueSwitch setOn:YES animated:YES];


}

-(BOOL) isSwitchOn {
    BOOL areSwitchesON = NO;
    
    if (self.redSwitch.on || self.blueSwitch.on || self.greenSwitch.on || self.blackSwitch.on) {
        areSwitchesON = YES;
    }
    
    return areSwitchesON;
}


- (IBAction)switchChanged:(UISwitch*)sender {
    
    if(![self isSwitchOn]) {
        defaultBackground = [UIColor blackColor];
        self.view.backgroundColor = defaultBackground;
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

+(UIColor*) userBackground {

    return defaultBackground;
    
}

-(UIColor*) checkSwitches:(UISwitch*) selectedSwitch {
    
    if(selectedSwitch == self.greenSwitch && self.greenSwitch.on) {
        
        [self.blueSwitch setOn:NO animated:NO];
        [self.blackSwitch setOn:NO animated:NO];
        [self.redSwitch setOn:NO animated:NO];
        
        defaultBackground = [UIColor greenColor];
        self.view.backgroundColor = defaultBackground;
        
    } else if (selectedSwitch == self.blueSwitch && self.blueSwitch.on) {
        
        [self.greenSwitch setOn:NO animated:NO];
        [self.blackSwitch setOn:NO animated:NO];
        [self.redSwitch setOn:NO animated:NO];
        
        defaultBackground = [UIColor blueColor];
        self.view.backgroundColor = defaultBackground;
    } else if (selectedSwitch == self.redSwitch && self.redSwitch.on) {
        
        [self.greenSwitch setOn:NO animated:NO];
        [self.blackSwitch setOn:NO animated:NO];
        [self.blueSwitch setOn:NO animated:NO];
        
        defaultBackground = [UIColor redColor];
        self.view.backgroundColor = defaultBackground;
    } else if (selectedSwitch == self.blackSwitch && self.blackSwitch.on) {
        
        [self.greenSwitch setOn:NO animated:NO];
        [self.blueSwitch setOn:NO animated:NO];
        [self.redSwitch setOn:NO animated:NO];
        defaultBackground = [UIColor blackColor];
        self.view.backgroundColor = defaultBackground;
    }
    
    
    return defaultBackground;
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
