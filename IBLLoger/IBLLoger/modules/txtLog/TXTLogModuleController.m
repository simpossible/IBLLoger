//
//  TXTLogModuleController.m
//  IBLLoger
//
//  Created by simp on 2018/7/23.
//  Copyright © 2018年 ibellar. All rights reserved.
//

#import "TXTLogModuleController.h"
#import "TXTFileControl.h"

@interface TXTLogModuleController ()

@property (nonatomic, strong) TXTFileControl * filesControl;

@end

@implementation TXTLogModuleController

- (void)loadView {
    self.view = [[NSView alloc] init];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.wantsLayer = YES;
    self.view.layer.backgroundColor = [NSColor yellowColor].CGColor;
    // Do view setup here.
}

- (void)initialUI {
    
}

- (void)initiaLFilesPart {
    self.filesControl = [[TXTFileControl alloc] init];

}

@end
