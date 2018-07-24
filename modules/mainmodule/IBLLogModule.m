//
//  IBLLogModule.m
//  IBLLoger
//
//  Created by simp on 2018/5/30.
//  Copyright © 2018年 ibellar. All rights reserved.
//

#import "IBLLogModule.h"

@interface IBLLogModule()

/**a name*/
@property (nonatomic, strong) NSString * moduleName;

/**need a 48 x 48 icon*/
@property (nonatomic, strong) NSImage * icon;

@end

@implementation IBLLogModule

- (instancetype)initWithName:(NSString *)name andIcon:(NSImage *)icon {
    if (self = [super init]) {
        self.moduleName = name;
        self.icon = icon;
        [self loadButtonItem];
    }
    return self;
}


- (void)show {
    
}

+ (instancetype)module {
    NSImage *image = [NSImage imageNamed:@"module"];
    return [[self alloc] initWithName:@"module" andIcon:image];
}

- (void)loadButtonItem {
}

@end
