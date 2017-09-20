//
//  ViewController.m
//  Tarea3
//
//  Created by Alejandro Topete on 9/20/17.
//  Copyright © 2017 AVALTO. All rights reserved.
//

#import "ViewController.h"
#include <time.h>
#include <stdlib.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)fncChangingLabel:(float)Red Blue: (float)Blue Green: (float)Green
{
    lblTesting.backgroundColor = [UIColor colorWithRed:Red/255.0 green:Green/255.0 blue:Blue/255.0 alpha:1.0];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /*CAShapeLayer *circleLayer = [CAShapeLayer layer];
    
    [circleLayer setPath:[[UIBezierPath bezierPathWithOvalInRect:CGRectMake(50, 50, 100, 100)] CGPath]];
    
    [[self.view layer] addSublayer:circleLayer];*/
    
    lblTesting.hidden = YES;
    
}

float myValue1 = 0;
float myValue2 = 0;
float myValue3 = 0;

- (IBAction)sldColorChange:(UISlider *)sender {
    UISlider *slider = (UISlider *)sender;
    NSString *newVaue;
    
    myValue1 = slider.value;
    
    newVaue = [NSString stringWithFormat:@"%f", slider.value];
    lblTesting.text = newVaue;
    
    lblTesting.backgroundColor = [UIColor colorWithRed:myValue1/255.0 green:myValue2/255.0 blue:myValue3/255.0 alpha:1.0];
}

- (IBAction)sldColorGreenChange:(UISlider *)sender {
    
    UISlider *slider = (UISlider *)sender;
    NSString *newVaue;
    
    myValue2 = slider.value;
    
    newVaue = [NSString stringWithFormat:@"%f", slider.value];
    lblTesting.text = newVaue;
    
    lblTesting.backgroundColor = [UIColor colorWithRed:myValue1/255.0 green:myValue2/255.0 blue:myValue3/255.0 alpha:1.0];

}

- (IBAction)sldColorBlue:(UISlider *)sender {
    
    UISlider *slider = (UISlider *)sender;
    NSString *newVaue;
    
    myValue3 = slider.value;
    
    newVaue = [NSString stringWithFormat:@"%f", slider.value];
    lblTesting.text = newVaue;
    
    lblTesting.backgroundColor = [UIColor colorWithRed:myValue1/255.0 green:myValue2/255.0 blue:myValue3/255.0 alpha:1.0];
}

- (IBAction)swVisualizer:(id)sender {
    UISwitch *mySwitch = (UISwitch *)sender;
    if ([mySwitch isOn]) {
        lblTesting.hidden = YES;
    } else {
        lblTesting.hidden = NO;
    }
}

- (IBAction)btnRandom:(UIButton *)sender {
    srand(time(NULL));
    float r = rand() % 74;
    
    myValue1 = r;
    
    r = rand() % 74;
    
    myValue2 = r;
    r = rand() % 74;
    
    myValue3 = r;
    
    
    lblTesting.backgroundColor = [UIColor colorWithRed:myValue1/255.0 green:myValue2/255.0 blue:myValue3/255.0 alpha:1.0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
