//
//  ViewController.m
//  Task01
//
//  Created by Thanh Dung TRUONG on 27/08/13.
//  Copyright (c) 2013 Professional Project. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIColor*) randomColor{
   CGFloat hue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
   CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
   CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
   return [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];

}

- (IBAction)doPressed:(id)sender {
   id obj = [RandomObject randomNSObject];
   if (obj != nil){
      self.randomView.backgroundColor = self.randomColor;
   }

}

@end
