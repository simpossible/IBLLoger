//
//  TXTLogModuleController.m
//  IBLLoger
//
//  Created by simp on 2018/7/23.
//  Copyright © 2018年 ibellar. All rights reserved.
//

#import "TXTLogModuleController.h"
#import "TXTFileControl.h"
#import <Masonry/Masonry.h>

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
    
    [self initialUI];
    // Do view setup here.
}

- (void)initialUI {
    [self initiaLFilesPart];
}

- (void)initiaLFilesPart {
    self.filesControl = [[TXTFileControl alloc] init];
    [self.view addSubview:self.filesControl.view];
    
    [self.filesControl.view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view.mas_left);
        make.bottom.equalTo(self.view.mas_bottom);
        make.width.mas_equalTo(150);
        make.top.equalTo(self.view.mas_top);
    }];

}

@end
