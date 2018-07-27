//
//  TXTFileTableCell.m
//  iOSCrashLog
//
//  Created by simp on 2018/7/24.
//

#import "TXTFileTableCell.h"
#import <Masonry/Masonry.h>

@interface TXTFileTableCell()

@property (nonatomic, strong) NSTextView * textView;

@end

@implementation TXTFileTableCell

- (instancetype)init {
    if (self = [super init]) {
        self.wantsLayer = YES;
        self.layer.backgroundColor = [NSColor greenColor].CGColor;
    }
    return self;
}


@end
