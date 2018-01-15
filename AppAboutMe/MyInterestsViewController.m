//
//  MyInterestsViewController.m
//  AppAboutMe
//
//  Created by Alvar Aronija on 14/01/2018.
//  Copyright © 2018 Alvar Aronija. All rights reserved.
//

#import "MyInterestsViewController.h"

@interface MyInterestsViewController ()
@property (weak, nonatomic) IBOutlet UISlider *imageSelector;
@property (strong, nonatomic) IBOutlet UIImageView *interestImage;
@property (weak, nonatomic) IBOutlet UILabel *interestText;
@property (nonatomic) int value;

@end

@implementation MyInterestsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self refresh];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)sliderChanged:(id)sender {
    
    _value = (int)_imageSelector.value;
    
    [self setImage:_value];
    
    
}

- (void)setImage:(int) imageNr {
    
    
    if (imageNr < 1) {
        _interestImage.image = [UIImage imageNamed:@"Football"];
        _interestText.text = @"Watching football";
    } else if(imageNr < 2) {
        _interestImage.image = [UIImage imageNamed:@"PROGRAMMING"];
        _interestText.text = @"Programming";
    } else if(imageNr < 3) {
        _interestImage.image = [UIImage imageNamed:@"Bordtennis"];
        _interestText.text = @"Table tennis";
    } else if(imageNr < 4) {
        _interestImage.image = [UIImage imageNamed:@"checkers"];
        _interestText.text = @"Checkers";
    } else if(imageNr < 5) {
        _interestImage.image = [UIImage imageNamed:@"Chess"];
        _interestText.text = @"Chess";
    } else if(imageNr < 6) {
        _interestImage.image = [UIImage imageNamed:@"cooking"];
        _interestText.text = @"Cooking food";
    } else if(imageNr < 7) {
        _interestImage.image = [UIImage imageNamed:@"hanging-out-with-family"];
        _interestText.text = @"Spending time with my family";
    } else if(imageNr < 8) {
        _interestImage.image = [UIImage imageNamed:@"Working out"];
        _interestText.text = @"Working out";
    }
    
    
}

- (void)setImage {
    
    _interestImage.image = [UIImage imageNamed:@"Football"];
    


}

- (void)refresh {
    
    [self setImage:_value];
    
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
