//
//  SettingsViewController.m
//  AppAboutMe
//
//  Created by Alvar Aronija on 14/01/2018.
//  Copyright © 2018 Alvar Aronija. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@property (weak, nonatomic) IBOutlet UISwitch *blueBackground;
@property (weak, nonatomic) IBOutlet UISwitch *greenBackground;
@property (weak, nonatomic) IBOutlet UISwitch *redBackground;
@property (strong, nonatomic) IBOutlet UIView *appDeveloping;
@property (strong, nonatomic) IBOutlet UIView *mainView;


@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

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
- (IBAction)setColor:(id)sender {
    
    if(_blueBackground.on) {
        
        [_greenBackground setOn:NO animated:NO];
        [_redBackground setOn:NO animated:NO];
        
        self.view.backgroundColor = [UIColor blueColor];
        
    }else if(_greenBackground.on) {
        
        [_blueBackground setOn:NO animated:NO];
        [_redBackground setOn:NO animated:NO];
        self.view.backgroundColor = [UIColor greenColor];
        
    }else if(_redBackground.on) {
        
        [_blueBackground setOn:NO animated:NO];
        [_greenBackground setOn:NO animated:NO];
        self.view.backgroundColor = [UIColor redColor];
    }
    
}



@end
