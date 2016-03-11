//
//  DemoSelector.m
//  ObjCExample
//
//  Created by Tin Blanc on 3/11/16.
//  Copyright © 2016 Tin Blanc. All rights reserved.
//

#import "DemoSelector.h"

@interface DemoSelector ()
@property (weak, nonatomic) IBOutlet UISlider *slider;

@end

@implementation DemoSelector

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // thực thi hàm hideSlider sau 2s
    [self performSelector:@selector(hideSlider) withObject:nil afterDelay:2];
    
}

- (IBAction)onClickMe:(id)sender {
    // background là khái niệm xử lý tác vụ, hàm bằng những thread chạy ngầm,không dùng main thread
    // [self performSelectorInBackground:@selector(doClickMe) withObject:nil];
    
    
    // thực thi hàm doClickMe làm block tương tác giao diện 2s
    //[self performSelectorOnMainThread:@selector(doClickMe) withObject:nil waitUntilDone:true];
    
    // Truyền tham số vào 1 hàm
    [self performSelectorOnMainThread:@selector(processData:) withObject:@{@"Tin":@"Blanc", @"4Fun":@"Jessi"} waitUntilDone:true];
    
}

-(void) processData: (NSDictionary*) data {
    for (NSString* key in [data allKeys]) {
        NSLog(@"%@ - %@", key, [data valueForKey:key]);
    }
}

-(void) doClickMe{
    // dừng thread thực thi trong 2 giây
    [NSThread sleepForTimeInterval:2];
}

-(void) hideSlider{
    self.slider.hidden = true;
}

@end
