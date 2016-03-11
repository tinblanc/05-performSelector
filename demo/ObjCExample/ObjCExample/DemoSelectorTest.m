//
//  DemoSelectorTest.m
//  ObjCExample
//
//  Created by Tin Blanc on 3/11/16.
//  Copyright © 2016 Tin Blanc. All rights reserved.
//

#import "DemoSelectorTest.h"

@interface DemoSelectorTest ()
@property (weak, nonatomic) IBOutlet UISlider *slider;

@end

@implementation DemoSelectorTest

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (IBAction)onClickMe:(id)sender {
    //[self performSelectorOnMainThread:@selector(doClickMe) withObject:nil waitUntilDone:true];
    
    //[self performSelectorInBackground:@selector(doClickMe) withObject:nil];
    
    [self performSelectorOnMainThread:@selector(processData:) withObject:@{@"Tin":@"Blanc", @"AAA":@"BBB", @"Hieu":@"Bee"} waitUntilDone:true];
}

-(void) processData: (NSDictionary*) data{
    for (NSString* key in [data allKeys]) {
        NSLog(@"%@ - %@", key, [data valueForKey:key]);
    
    }
}

-(void) doClickMe{
    [NSThread sleepForTimeInterval:2];
}

@end
