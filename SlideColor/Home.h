//
//  ViewController.h
//  SlideColor
//
//  Created by Jesus Antonio Hernandez Mendez on 19/01/15.
//  Copyright (c) 2015 BTICs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Home : UIViewController

//Labels
@property (strong, nonatomic) IBOutlet UILabel *lblColor;
@property (strong, nonatomic) IBOutlet UILabel *lblRed;
@property (strong, nonatomic) IBOutlet UILabel *lblGreen;
@property (strong, nonatomic) IBOutlet UILabel *lblBlue;



//Sliders
@property (strong, nonatomic) IBOutlet UISlider *sldRed;

@property (strong, nonatomic) IBOutlet UISlider *sldGreen;

@property (strong, nonatomic) IBOutlet UISlider *sldBlue;

//Actions
- (IBAction)actionRed:(id)sender;
- (IBAction)actionGreen:(id)sender;
- (IBAction)actionBlue:(id)sender;


@end

