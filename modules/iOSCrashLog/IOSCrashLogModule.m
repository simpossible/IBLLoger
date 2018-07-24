//
//  IOSCrashLogModule.m
//  IBLLoger
//
//  Created by simp on 2018/5/30.
//  Copyright © 2018年 ibellar. All rights reserved.
//

#import "IOSCrashLogModule.h"

@implementation IOSCrashLogModule

- (instancetype)initWithName:(NSString *)name andIcon:(NSImage *)icon {
    if (self = [super initWithName:name andIcon:icon]) {

    }
    return self;
}

+ (instancetype)module {
    NSImage *image = [NSImage imageNamed:@"ioscrash"];
    return [[self alloc] initWithName:@"iCrash" andIcon:image];
}

@end
