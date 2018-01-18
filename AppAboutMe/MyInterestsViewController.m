//
//  MyInterestsViewController.m
//  AppAboutMe
//
//  Created by Alvar Aronija on 14/01/2018.
//  Copyright © 2018 Alvar Aronija. All rights reserved.
//

#import "MyInterestsViewController.h"
#import "SettingsViewController.h"

@interface MyInterestsViewController ()
@property (weak, nonatomic) IBOutlet UISlider *imageSelector;
@property (strong, nonatomic) IBOutlet UIImageView *interestImage;
@property (weak, nonatomic) IBOutlet UILabel *interestText;
@property (nonatomic) int value;
@property (nonatomic) UIColor *background;
@property (nonatomic) NSDictionary *myInterestsData;

@end

@implementation MyInterestsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor= [SettingsViewController userBackground];
    self.myInterestsData = @{@0: @{@"title": @"Football",
                                            @"image": [UIImage imageNamed:@"football"]
                                            },
                             @1: @{@"title": @"Chess",
                                   @"image": [UIImage imageNamed:@"chess"]
                                   },
                             @2: @{@"title": @"Table tennis",
                                   @"image": [UIImage imageNamed:@"bordtennis"]
                                   },
                             @3: @{@"title": @"Cooking",
                                   @"image": [UIImage imageNamed:@"cooking"]
                                   },
                             @4: @{@"title": @"Programming",
                                   @"image": [UIImage imageNamed:@"programming"]
                                   },
                             @5: @{@"title": @"Working out",
                                   @"image": [UIImage imageNamed:@"working-out"]
                                   },
                             @6: @{@"title": @"Spending time with my family",
                                   @"image": [UIImage imageNamed:@"family"]
                                   },
                             @7: @{@"title": @"Checkers",
                                   @"image": [UIImage imageNamed:@"checkers"]
                                   }
                             };
    
    [self showPicture:@0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)sliderChanged:(id)sender {
    
    self.value = (int)self.imageSelector.value;
    
    NSNumber *number = [NSNumber numberWithInt:self.value];

    [self showPicture:number];

}


- (void)showPicture:(NSNumber*) number {
    
    self.interestText.text = self.myInterestsData[number][@"title"];
    self.interestImage.image = self.myInterestsData[number][@"image"];
    
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
