//
//  ViewController.h
//  Tarea3
//
//  Created by Alejandro Topete on 9/20/17.
//  Copyright © 2017 AVALTO. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UILabel *lblTesting;
    IBOutlet UITextField *txtName;
    IBOutlet UITextField *txtPhone;
    
    
}


- (IBAction)sldColorChange:(UISlider *)sender;

- (IBAction)sldColorBlue:(UISlider *)sender;

- (IBAction)sldColorGreenChange:(UISlider *)sender;

- (void)fncChangingLabel:(float)Red Blue: (float)Blue Green: (float)Green;

- (IBAction)swVisualizer:(id)sender;

- (IBAction)btnRandom:(UIButton *)sender;

- (IBAction)btnAlert:(UIButton *)sender;

@end

