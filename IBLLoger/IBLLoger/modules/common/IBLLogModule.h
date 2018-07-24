//
//  IBLLogModule.h
//  IBLLoger
//
//  Created by simp on 2018/5/30.
//  Copyright © 2018年 ibellar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>

typedef NS_ENUM(NSUInteger,IBLLogModuleState) {
    IBLLogModuleStateNone,
    IBLLogModuleStateShowing,
};

@interface IBLLogModule : NSObject

/**主页面显示的图标*/
@property (nonatomic, strong) NSView * buttonIcon;

/**a name*/
@property (nonatomic, strong, readonly) NSString * moduleName;

/**need a 48 x 48 icon*/
@property (nonatomic, strong, readonly) NSImage * icon;

@property (nonatomic, assign, readonly) IBLLogModuleState moduleState;

- (instancetype)initWithName:(NSString *)name andIcon:(NSImage *)icon;

+ (instancetype)module;

- (void)show;



@end
