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
    
    [self initialUI];
    // Do view setup here.
}

- (void)initialUI {
    [self initiaLFilesPart];
}

- (void)initiaLFilesPart {
    self.filesControl = [[TXTFileControl alloc] init];
    [self.view addSubview:self.filesControl.view];
    self.filesControl.view.translatesAutoresizingMaskIntoConstraints = NO;
    NSArray *cons = @[[self.filesControl.view.leftAnchor constraintEqualToAnchor:self.view.leftAnchor],
                       [self.filesControl.view.topAnchor constraintEqualToAnchor:self.view.topAnchor],
                       [self.filesControl.view.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor],
                      [self.filesControl.view.widthAnchor constraintEqualToConstant:150]];
    [NSLayoutConstraint activateConstraints:cons];

}

@end
