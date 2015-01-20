//
//  ViewController.m
//  SlideColor
//
//  Created by Jesus Antonio Hernandez Mendez on 19/01/15.
//  Copyright (c) 2015 BTICs. All rights reserved.
//

#import "Home.h"

float red;
float green;
float blue;

@interface Home ()

@end

@implementation Home

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)changeColor{
    
    self.lblColor.backgroundColor = [UIColor colorWithRed:(red/255) green:(green/255) blue:(blue/255) alpha:1];
    
}

- (IBAction)actionRed:(id)sender {
    red = self.sldRed.value;
    self.lblRed.text = [NSString stringWithFormat:@"%.f", red];
    self.sldRed.tintColor = [UIColor colorWithRed:(red/255) green:(green/255) blue:(blue/255) alpha:1];
    [self changeColor];
   
}

- (IBAction)actionGreen:(id)sender {
      green = self.sldGreen.value;
    self.lblGreen.text = [NSString stringWithFormat:@" %.f", green];
    self.sldGreen.tintColor = [UIColor colorWithRed:(red/255) green:(green/255) blue:(blue/255) alpha:1];
    [self changeColor];
}

- (IBAction)actionBlue:(id)sender {
      blue = self.sldBlue.value;
    self.lblBlue.text = [NSString stringWithFormat:@" %.f", blue];
    self.sldBlue.tintColor = [UIColor colorWithRed:(red/255) green:(green/255) blue:(blue/255) alpha:1];
    [self changeColor];

}
@end
