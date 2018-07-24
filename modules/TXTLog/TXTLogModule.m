//
//  TXTLogModule.m
//  IBLLoger
//
//  Created by simp on 2018/5/30.
//  Copyright © 2018年 ibellar. All rights reserved.
//

#import "TXTLogModule.h"
#import "TXTMouduleButtonIcon.h"
#import "TXTLogModuleController.h"

@interface TXTLogModule ()

@property (nonatomic, strong) NSImage * icon;

@property (nonatomic, strong) NSString * name;

@property (nonatomic, strong) NSWindowController * subWindowController;

@end

@implementation TXTLogModule

- (instancetype)initWithName:(NSString *)name andIcon:(NSImage *)icon {
    if (self = [super initWithName:name andIcon:icon]) {
        
    }
    return self;
}

+ (instancetype)module {
    NSImage *image = [NSImage imageNamed:@"log"];
    return [[self alloc] initWithName:@"log" andIcon:image];
}

- (void)loadButtonItem {
}

- (void)show {
    if (!self.subWindowController) {
        TXTLogModuleController *logController = [[TXTLogModuleController alloc] init];
        NSWindow *subWindow = [NSWindow windowWithContentViewController:logController];
        NSWindowController *wc = [[NSWindowController alloc] initWithWindow:subWindow];
        [subWindow setFrame:NSMakeRect(0, 0, 1000, 1000) display:YES];
        self.subWindowController = wc;
    }
    [self.subWindowController showWindow:nil];
}


@end
