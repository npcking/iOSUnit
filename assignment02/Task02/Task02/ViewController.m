//
//  ViewController.m
//  Task02
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
   PersonClass* aPerson = [PersonClass new];
   BusinessClass* aBusiness = [BusinessClass new];
   OrganizationClass* anOrganization = [OrganizationClass new];
   UnknownTypeClass* anUnkown = [UnknownTypeClass new];
   
   NSArray* array = [NSArray arrayWithObjects: aPerson, aBusiness, anOrganization, anUnkown, nil];
   
   NSString* output = @"";
   
   for (id obj in array){
      if ([obj conformsToProtocol:@protocol(TypeOfContact)]){
                  
         NSString* s = [obj eligibleForAddressBook];
         output = [output stringByAppendingString:s];
      } else
         output = [output stringByAppendingString:@"Unfortunately, I'm not eligible to put in AddressBook"];
   };
   self.outputLbl.text = output;
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
