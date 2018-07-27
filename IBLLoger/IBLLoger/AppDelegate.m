//
//  AppDelegate.m
//  IBLLoger
//
//  Created by simp on 2018/5/30.
//  Copyright © 2018年 ibellar. All rights reserved.
//

#import "AppDelegate.h"
#import "ModuleMainController.h"

@interface AppDelegate ()

@property (nonatomic, strong) NSWindowController *windowController;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {

   
//    NSRect frame = NSMakeRect(0, 0, 750, 750);
////    [window setFrame: display:YES];
//   
//    NSUInteger style = NSTitledWindowMask | NSClosableWindowMask | NSMiniaturizableWindowMask | NSResizableWindowMask;
//    
//    NSWindow * window = [[NSWindow alloc] initWithContentRect:frame styleMask:style backing:NSBackingStoreBuffered defer:YES];
//
//    NSWindowController *wcontroller = [[NSWindowController alloc] initWithWindow:window];
//    self.windowController = wcontroller;
//     [wcontroller showWindow:self];
//    window.title = @"日志解析";
//    [window center];
//    [window makeKeyWindow];
//
//    ModuleMainController *mainController = [[ModuleMainController alloc] init];
//    window.contentViewController = mainController;
    
//    [NSApplication sharedApplication].mainWindow =
//    [[NSApplication sharedApplication].mainWindow setFrame:NSMakeRect(100, 0, 750, 750) display:YES];
    
    // Insert code here to initialize your application
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
