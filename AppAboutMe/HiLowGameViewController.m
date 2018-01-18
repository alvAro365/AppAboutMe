//
//  HiLowGameViewController.m
//  AppAboutMe
//
//  Created by Alvar Aronija on 15/01/2018.
//  Copyright © 2018 Alvar Aronija. All rights reserved.
//

#import "HiLowGameViewController.h"
#import "SettingsViewController.h"

@interface HiLowGameViewController ()

@property (weak, nonatomic) IBOutlet UISlider *guessNumber;
@property (weak, nonatomic) IBOutlet UILabel *showNumber;
@property (weak, nonatomic) IBOutlet UIButton *guessButton;
@property (weak, nonatomic) IBOutlet UILabel *showResult;
@property (nonatomic) int value;
@property (nonatomic) int rightAnswer;
@property (weak, nonatomic) IBOutlet UILabel *answer;
@property (weak, nonatomic) IBOutlet UILabel *correctAnswar;
@property (nonatomic) UIColor* background;

@property (nonatomic) NSString* resultText;


@end

@implementation HiLowGameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor= [SettingsViewController globalBackgroundColor];
    [self randomNumber];
    [self refresh];
    
}

- (void)refresh {
    [self setShowNumber];
    [self showRandomNumber];
    
    if(_resultText == nil) {
        self.showResult.text = @"Guess a number between 0 and 100!";
    } else{
        self.showResult.text = _resultText;
    }

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)sliderChanged:(id)sender {
    _value = (int)_guessNumber.value;
    [self setShowNumber];
 
    
    
}

- (void) setShowNumber{
    NSString* valueString = [NSString stringWithFormat:@"%i", _value];
    _showNumber.text = valueString;
}

-(void) randomNumber{
    _rightAnswer = arc4random_uniform(100);
}

- (void) showRandomNumber{
    NSString* valueString = [NSString stringWithFormat:@"%i", _rightAnswer];
    _answer.text = valueString;
}

- (IBAction)guessTabbed:(id)sender {
    _value = (int)_guessNumber.value;
    [self checkGuess:_value];
    
}

- (void) checkGuess:(int) guess {

    if (guess == _rightAnswer) {
        NSString*_correctAnswer = @"You Win!";
        _resultText = _correctAnswer;
        [self randomNumber];
        [self result];
    } else if (guess > _rightAnswer) {
        NSString*_wrongAnswer = @"Too high:( Guess again!";
        _resultText= _wrongAnswer;
        [self result];

    } else if (guess < _rightAnswer) {
        NSString*_wrongAnswer = @"Too low:( Guess again!";
        _resultText= _wrongAnswer;
        [self result];
    }

    
}

-(void) result {

    _showResult.text = _resultText;
    [self refresh];
    
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
