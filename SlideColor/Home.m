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
float blink;

NSTimer *myTimer;

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

- (void)blink{
    self.lblColor.alpha = self.lblColor.alpha ? 0 : 1;
}

- (void)changeColor{
    
    self.lblColor.backgroundColor = [UIColor colorWithRed:(red/255) green:(green/255) blue:(blue/255) alpha:1];
    
}

- (IBAction)actionRed:(id)sender {
    red = self.sldRed.value;
    self.lblRed.text = [NSString stringWithFormat:@"Red: %.f", red];
    [self changeColor];
}


- (IBAction)actionGreen:(id)sender {
      green = self.sldGreen.value;
    self.lblGreen.text = [NSString stringWithFormat:@"Green: %.f", green];
    [self changeColor];
}

- (IBAction)actionBlue:(id)sender {
      blue = self.sldBlue.value;
    self.lblBlue.text = [NSString stringWithFormat:@"Blue: %.f", blue];
    [self changeColor];

}

- (IBAction)sldalpha:(id)sender {
    blink = self.sldalpha.value;
    self.sldalpha.value = round(self.sldalpha.value);
    [myTimer invalidate];
    myTimer = nil;
    if (self.sldalpha.value) {
        myTimer = [NSTimer scheduledTimerWithTimeInterval:(self.sldalpha.value) target:self selector:@selector(blink) userInfo:nil repeats:YES];
    }
    else
    {
        self.lblColor.alpha=1;
    }
    self.lblBlink.text = [NSString stringWithFormat:@"Blink: %.f",blink];
    
    

}
@end
