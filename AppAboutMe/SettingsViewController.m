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
static UIColor* userBackground = nil;

- (void)viewDidLoad {
    
    // Do any additional setup after loading the view.
    [super viewDidLoad];
    
    if(userBackground!=nil) {
        
        [self setSwitchOn:userBackground];
        self.view.backgroundColor = userBackground;
    }else {
        
        [self.blackSwitch setOn:YES animated:YES];
        self.view.backgroundColor = [UIColor blackColor];
        
    }
 //   [self.blueSwitch setOn:YES animated:YES];


}

-(BOOL) isSwitchOn {
    BOOL switchOn = NO;
    
    if (self.redSwitch.on || self.blueSwitch.on || self.greenSwitch.on || self.blackSwitch.on) {
        switchOn = YES;
    }
    
    return switchOn;
}


- (IBAction)switchChanged:(UISwitch*)sender {
    
    if(![self isSwitchOn]) {
        userBackground = [UIColor blackColor];
        self.view.backgroundColor = userBackground;
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

    return userBackground;
    
}

-(UIColor*) checkSwitches:(UISwitch*) selectedSwitch {
    
    if(selectedSwitch == self.greenSwitch && self.greenSwitch.on) {
        
        [self.blueSwitch setOn:NO animated:NO];
        [self.blackSwitch setOn:NO animated:NO];
        [self.redSwitch setOn:NO animated:NO];
        
        userBackground = [UIColor greenColor];
        self.view.backgroundColor = userBackground;
        
    } else if (selectedSwitch == self.blueSwitch && self.blueSwitch.on) {
        
        [self.greenSwitch setOn:NO animated:NO];
        [self.blackSwitch setOn:NO animated:NO];
        [self.redSwitch setOn:NO animated:NO];
        
        userBackground = [UIColor blueColor];
        self.view.backgroundColor = userBackground;
    } else if (selectedSwitch == self.redSwitch && self.redSwitch.on) {
        
        [self.greenSwitch setOn:NO animated:NO];
        [self.blackSwitch setOn:NO animated:NO];
        [self.blueSwitch setOn:NO animated:NO];
        
        userBackground = [UIColor redColor];
        self.view.backgroundColor = userBackground;
    } else if (selectedSwitch == self.blackSwitch && self.blackSwitch.on) {
        
        [self.greenSwitch setOn:NO animated:NO];
        [self.blueSwitch setOn:NO animated:NO];
        [self.redSwitch setOn:NO animated:NO];
        userBackground = [UIColor blackColor];
        self.view.backgroundColor = userBackground;
    }
    
    
    return userBackground;
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
