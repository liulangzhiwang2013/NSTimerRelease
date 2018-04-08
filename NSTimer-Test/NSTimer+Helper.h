//
//  NSTimer+Helper.h
//  NSTimer-Test
//
//  Created by pxx on 2018/3/19.
//  Copyright © 2018年 平晓行. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSTimer (Helper)

+ (NSTimer *)helper_scheduedTimerWithTimeInterval:(NSTimeInterval)seconds
                                            block:(void(^)(id info))block
                                         userinfo:(id)userinfo
                                          repeats:(BOOL)repeats;



@end
