//
//  IBLDragEventView.h
//  mainmodule
//
//  Created by simp on 2018/7/25.
//

#import <Cocoa/Cocoa.h>

@protocol IBLDragEventProtocol <NSObject>

- (void)dragEndWithFilename:(NSArray *)fileNames;

@end

@interface IBLDragEventView : NSView

@property (nonatomic, weak) id<IBLDragEventProtocol> delegate;


@end
