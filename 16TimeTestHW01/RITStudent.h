//
//  RITStudent.h
//  16TimeTestHW01
//
//  Created by Aleksandr Pronin on 18.02.14.
//  Copyright (c) 2014 Pronin Alexander. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RITStudent : NSObject

@property (strong, nonatomic) NSDate* dateOFBirth;
@property (strong, nonatomic) NSString* name;

+ (RITStudent*) studentWithName:(NSString*) name;

@end
