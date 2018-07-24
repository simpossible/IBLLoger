//
//  TXTFileControl.m
//  IBLLoger
//
//  Created by simp on 2018/7/23.
//  Copyright © 2018年 ibellar. All rights reserved.
//

#import "TXTFileControl.h"
#import "IBLFile.h"

@interface TXTFileControl()<NSTableViewDelegate,NSTableViewDataSource>

@property (nonatomic, strong) NSMutableArray<IBLFile *> * files;

@property (nonatomic, strong) NSTableView * tableView;

@end

@implementation TXTFileControl

- (instancetype)init {
    if (self = [super init]) {
        self.files = [NSMutableArray array];
        [self loadView];
        [self initialUI];
    }
    return self;
}

- (void)loadView {
    self.view = [[NSView alloc] init];
    self.view.wantsLayer = YES;
    self.view.layer.backgroundColor = [NSColor blueColor].CGColor;
}

- (void)initialUI {
    [self initialTableView];
}

- (void)initialTableView {
//    self.tableView = [[NSTableView alloc] init];
//    [self.view addSubview:self.tableView];
//    self.tableView.translatesAutoresizingMaskIntoConstraints = NO;
//    NSArray *cons = @[[self.tableView.topAnchor constraintEqualToAnchor:self.view.topAnchor],
//                      [self.tableView.leftAnchor constraintEqualToAnchor:self.view.leftAnchor],
//                      [self.tableView.rightAnchor constraintEqualToAnchor:self.view.rightAnchor],
//                      [self.tableView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor]];
//    [NSLayoutConstraint activateConstraints:cons];
//    self.tableView.delegate = self;
//    self.tableView.dataSource = self;
}

@end
