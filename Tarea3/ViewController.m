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

CAShapeLayer *circleLayer;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    circleLayer = [CAShapeLayer layer];
    
    [circleLayer setPath:[[UIBezierPath bezierPathWithOvalInRect:CGRectMake(100, 500, 100, 100)] CGPath]];
    
    [[self.view layer] addSublayer:circleLayer];
    
    
    
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
    circleLayer.lineWidth = 3.0;
    circleLayer.fillColor = [[UIColor colorWithRed:myValue1/255.0 green:myValue2/255.0 blue:myValue3/255.0 alpha:1.0] CGColor];
    circleLayer.strokeColor = [[UIColor blackColor] CGColor];
}

- (IBAction)sldColorGreenChange:(UISlider *)sender {
    
    UISlider *slider = (UISlider *)sender;
    NSString *newVaue;
    
    myValue2 = slider.value;
    
    newVaue = [NSString stringWithFormat:@"%f", slider.value];
    lblTesting.text = newVaue;
    
    lblTesting.backgroundColor = [UIColor colorWithRed:myValue1/255.0 green:myValue2/255.0 blue:myValue3/255.0 alpha:1.0];
    circleLayer.lineWidth = 3.0;
    circleLayer.fillColor = [[UIColor colorWithRed:myValue1/255.0 green:myValue2/255.0 blue:myValue3/255.0 alpha:1.0] CGColor];
    circleLayer.strokeColor = [[UIColor blackColor] CGColor];
}

- (IBAction)sldColorBlue:(UISlider *)sender {
    
    UISlider *slider = (UISlider *)sender;
    NSString *newVaue;
    
    myValue3 = slider.value;
    
    newVaue = [NSString stringWithFormat:@"%f", slider.value];
    lblTesting.text = newVaue;
    
    lblTesting.backgroundColor = [UIColor colorWithRed:myValue1/255.0 green:myValue2/255.0 blue:myValue3/255.0 alpha:1.0];
    circleLayer.lineWidth = 3.0;
    circleLayer.fillColor = [[UIColor colorWithRed:myValue1/255.0 green:myValue2/255.0 blue:myValue3/255.0 alpha:1.0] CGColor];
    circleLayer.strokeColor = [[UIColor blackColor] CGColor];
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


- (IBAction)btnAlert:(UIButton *)sender {
    
    if ([txtName.text isEqualToString:@""]){
        return;
    }
    
    UIAlertView *helloEarthInputAlert = [[UIAlertView alloc] initWithTitle:@"Llama!" message:[NSString stringWithFormat:@"Nombre: %@, Telefono: %@", txtName.text, txtPhone.text] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    // Display this message.
    [helloEarthInputAlert show];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
