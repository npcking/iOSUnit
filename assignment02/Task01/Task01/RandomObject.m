//
//  RandomObject.m
//  Task01
//
//  Created by Thanh Dung TRUONG on 27/08/13.
//  Copyright (c) 2013 Professional Project. All rights reserved.
//

#import "RandomObject.h"

@implementation RandomObject

+(id) randomNSObject;
{
   NSArray* _objectCollection = [NSArray arrayWithObjects:@"UIView", @"NSString", @"NSInteger", nil];
   id obj = [_objectCollection objectAtIndex:(arc4random()%[_objectCollection count])];
   if ([obj isEqualToString:@"UIView"])
      return obj;
   else
      return nil;
}

@end
