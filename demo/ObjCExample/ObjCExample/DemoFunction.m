//
//  DemoFunction.m
//  ObjCExample
//
//  Created by Tin Blanc on 3/10/16.
//  Copyright © 2016 Tin Blanc. All rights reserved.
//

#import "DemoFunction.h"

@interface DemoFunction ()

@end

@implementation DemoFunction

- (void)viewDidLoad {
    [super viewDidLoad];
    [self writeln:@"Demo Function"];
    [self sayFirstName:@"Tin" andLastName:@"Blanc"];
    
    
    // Chuyển độ C sang độ F
    float tempDegree = 20.1;
    NSString* result = [NSString stringWithFormat:@"degree: %2.1f equal to %3.1f F", tempDegree, [self celciusToFahrenheit:tempDegree]];
    [self writeln:result];
    
    [self performSelector:@selector(celciusToFahrenheit2:) withObject:@(30.1)];
    
}


- (void) sayFirstName: (NSString*) firstName andLastName:(NSString*) lastName {
    NSLog(@"%@ %@", firstName, lastName);
}


    // degree là số thập phân truyền vào
- (float) celciusToFahrenheit:(float) degree{
    return degree * 1.8+ 32.0;
}


// NSNumber là 1 kiểu con trỏ kế thừa từ NSObject
- (void) celciusToFahrenheit2: (NSNumber*) degree{
    // degree floatValue -> unbox từ NSObject sang data type value
    float result = [degree floatValue] * 1.8 +32.0;
    NSLog(@"Result = %2.1f", result);
}

@end
