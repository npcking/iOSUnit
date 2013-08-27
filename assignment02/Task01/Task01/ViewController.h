//
//  ViewController.h
//  Task01
//
//  Created by Thanh Dung TRUONG on 27/08/13.
//  Copyright (c) 2013 Professional Project. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RandomObject.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *randomView;
-(UIColor*) randomColor;
- (IBAction)doPressed:(id)sender;

@end
