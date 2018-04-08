//
//  BViewController.m
//  NSTimer-Test
//
//  Created by pxx on 2018/3/19.
//  Copyright © 2018年 平晓行. All rights reserved.
//

#import "BViewController.h"
#import "NSTimer+Helper.h"

@interface BViewController ()

@property (nonatomic,weak) NSTimer *timer;

@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    @weakify(self);
    self.timer = [NSTimer helper_scheduedTimerWithTimeInterval:1.0 block:^(id info) {
        @strongify(self);
        [self print:info];
    } userinfo:@"123" repeats:YES];
    
    
//    self.timer  = [NSTimer scheduledTimerWithTimeInterval:1.0
//                                                   target:self
//                                                 selector:@selector(print2:)
//                                                 userInfo:@[@"weqe" ,@"weqe"]
//                                                  repeats:YES];
}



- (void)print:(id)info
{
    NSLog(@"执行block-userinfo=%@" , info);
}

- (void)print2:(NSTimer *)info
{
    NSLog(@"%@" , info.userInfo);
}

- (void)dealloc
{
    [self.timer invalidate];
    self.timer = nil;
    NSLog(@"销毁了B");
}


@end
