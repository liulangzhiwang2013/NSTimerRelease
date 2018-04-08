//
//  NSTimer+Helper.m
//  NSTimer-Test
//
//  Created by pxx on 2018/3/19.
//  Copyright © 2018年 平晓行. All rights reserved.
//

#import "NSTimer+Helper.h"

@implementation NSTimer (Helper)

//将nstimer的target指向NSTimer类和类方法
+ (NSTimer *)helper_scheduedTimerWithTimeInterval:(NSTimeInterval)seconds
                                            block:(void (^)(id))block
                                         userinfo:(id)userinfo
                                          repeats:(BOOL)repeats
{
    if (userinfo==nil) {
        userinfo = @"";
    }
    
    return [NSTimer scheduledTimerWithTimeInterval:seconds
                                            target:self
                                          selector:@selector(helper_block:)
                                          userInfo:@[[block copy] , userinfo]
                                           repeats:repeats];
}


//在类方法中回调block
+ (void)helper_block:(NSTimer *)timer
{
    NSArray *infoArr = timer.userInfo;
    void (^myblock)(id userinfo) = infoArr[0];
    id info = infoArr[1];
    
    if (myblock) {
        myblock(info);
    }
}

@end
