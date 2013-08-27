//
//  PersonClass.h
//  Task02
//
//  Created by Thanh Dung TRUONG on 27/08/13.
//  Copyright (c) 2013 Professional Project. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TypeOfContact.h"

@interface PersonClass : NSObject <TypeOfContact>

-(NSString*)eligibleForAddressBook;

@end
