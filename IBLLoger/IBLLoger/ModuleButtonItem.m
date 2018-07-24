//
//  ModuleButtonItem.m
//  IBLLoger
//
//  Created by simp on 2018/5/30.
//  Copyright © 2018年 ibellar. All rights reserved.
//

#import "ModuleButtonItem.h"

@interface ModuleButtonItem ()

@property (nonatomic, strong) NSImageView * icon;

@property (nonatomic, strong) NSTextView * nameLable;

@end

@implementation ModuleButtonItem

- (instancetype)init {
    if (self = [super init]) {
        
    }
    return self;
}


- (void)loadView {
    NSControl *control = [[NSControl alloc] init];
    self.view = control;
    control.target = self;
    control.action = @selector(controlClicked:);
    control.enabled = YES;
    [control sendActionOn:NSEventMaskLeftMouseDown];
    [control sendActionOn:NSEventMaskAny];
    control.wantsLayer = YES;
    control.layer.backgroundColor = [NSColor blueColor].CGColor;
}

- (void)controlClicked:(NSControl *)sender {
    NSLog(@"aaa");
}

- (void)setModule:(IBLLogModule *)module {
    _module = module;
    self.icon.image = module.icon;
    [self.nameLable setString:module.moduleName];
    
    
}

- (void)initialUI {
    [self initialIcon];
    [self initialText];
}

- (void)initialIcon {
    self.icon = [[NSImageView alloc] init];
    [self.view addSubview:self.icon];
    self.icon.translatesAutoresizingMaskIntoConstraints = NO;
 
    NSLayoutConstraint *centerX = [self.icon.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor];
        NSLayoutConstraint *top = [self.icon.topAnchor constraintEqualToAnchor:self.view.topAnchor];
        NSLayoutConstraint *width = [self.icon.widthAnchor constraintEqualToConstant:48];
    NSLayoutConstraint *height = [self.icon.heightAnchor constraintEqualToConstant:48];
    [NSLayoutConstraint activateConstraints:@[centerX,top,width,height]];
    
     self.icon.wantsLayer = YES;
  [self.icon.layer setBackgroundColor:[[NSColor orangeColor] CGColor]];
    self.icon.layer.cornerRadius = 3;
}

- (void)initialText {
    self.nameLable = [[NSTextView alloc] init];
    [self.view addSubview:self.nameLable];
     self.nameLable.translatesAutoresizingMaskIntoConstraints = NO;
    self.nameLable.font =  [NSFont systemFontOfSize:14];
    NSLayoutConstraint *centerX = [self.nameLable.centerXAnchor constraintEqualToAnchor:self.icon.centerXAnchor];
    NSLayoutConstraint *top = [self.nameLable.topAnchor constraintEqualToAnchor:self.icon.bottomAnchor constant:2];
    NSLayoutConstraint *height = [self.nameLable.heightAnchor constraintEqualToConstant:17];
     NSLayoutConstraint *width = [self.nameLable.widthAnchor constraintEqualToAnchor:self.view.widthAnchor];
    [NSLayoutConstraint activateConstraints:@[centerX,top,height,width]];
    self.nameLable.wantsLayer = YES;
    self.nameLable.editable = NO;
    self.nameLable.textColor = [NSColor blackColor];
    self.nameLable.alignment = NSTextAlignmentCenter;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.wantsLayer = YES;
    self.view.layer.cornerRadius = 3;
    [self initialUI];
    // Do view setup here.
}

- (void)touchesBeganWithEvent:(NSEvent *)event {
    [super touchesBeganWithEvent:event];
    NSLog(@"___");
}

@end
