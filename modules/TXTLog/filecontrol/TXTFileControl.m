//
//  TXTFileControl.m
//  IBLLoger
//
//  Created by simp on 2018/7/23.
//  Copyright © 2018年 ibellar. All rights reserved.
//

#import "TXTFileControl.h"
#import "IBLFile.h"
#import <Masonry/Masonry.h>
#import "TXTFileTableCell.h"
#import <mainmodule/IBLDragEventView.h>
#import "TXTLogFile.h"

@interface TXTFileControl()<NSTableViewDelegate,NSTableViewDataSource,IBLDragEventProtocol>

@property (nonatomic, strong) NSMutableArray<TXTLogFile *> * files;

@property (nonatomic, strong) NSMutableDictionary * dictionary;

@property (nonatomic, strong) NSTableView * tableView;

@end

@implementation TXTFileControl

- (instancetype)init {
    if (self = [super init]) {
        self.files = [NSMutableArray array];
        self.dictionary = [NSMutableDictionary dictionary];
        [self loadView];
        [self initialUI];
    }
    return self;
}

- (void)loadView {
    IBLDragEventView * dragView = [[IBLDragEventView alloc] init];
    dragView.wantsLayer = YES;
    dragView.layer.backgroundColor = [NSColor blueColor].CGColor;
    dragView.delegate = self;
    self.view = dragView;
    
}

- (void)initialUI {
    [self initialTableView];
}

- (void)initialTableView {
    self.tableView = [[NSTableView alloc] init];
    [self.view addSubview:self.tableView];
//    self.tableView.translatesAutoresizingMaskIntoConstraints = NO;
//    NSArray *cons = @[[self.tableView.topAnchor constraintEqualToAnchor:self.view.topAnchor],
//                      [self.tableView.leftAnchor constraintEqualToAnchor:self.view.leftAnchor],
//                      [self.tableView.rightAnchor constraintEqualToAnchor:self.view.rightAnchor],
//                      [self.tableView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor]];
//    [NSLayoutConstraint activateConstraints:cons];

    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(NSEdgeInsetsZero);
    }];
//    NSTableColumn * column = [[NSTableColumn alloc]initWithIdentifier:@"file"];
//    [self.tableView addTableColumn:column];

    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
//    [self.view mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.height.mas_equalTo(1000);
//    }];
    
    
}

#pragma mark - 拖动
- (void)dragEndWithFilename:(NSArray *)fileNames {
    NSMutableArray * array = [NSMutableArray array];
    for (NSString *str in fileNames) {
        TXTLogFile *file = [self fileWithPath:str];
        if (!file) {//去重复
            file = [TXTLogFile fileWithPath:str];
            [array addObject:file];
            [self.dictionary setObject:file forKey:str];
        }
    }
    [self.files addObjectsFromArray:array];
    [self.tableView reloadData];
}

- (TXTLogFile *)fileWithPath:(NSString *)filePath {
    if (filePath.length != 0) {
        return [self.dictionary objectForKey:filePath];
    }
    return nil;
}


#pragma mark - delegate

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return 1;//self.files.count;
}

- (nullable id)tableView:(NSTableView *)tableView objectValueForTableColumn:(nullable NSTableColumn *)tableColumn row:(NSInteger)row {
    return [self.files objectAtIndex:row];
}

- (nullable NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(nullable NSTableColumn *)tableColumn row:(NSInteger)row{
    //根据ID取视图
    TXTFileTableCell * view = [tableView makeViewWithIdentifier:@"file" owner:self];
    if (view==nil) {
        view = [[TXTFileTableCell alloc] init];
    }
    return view;
}

- (CGFloat)tableView:(NSTableView *)tableView heightOfRow:(NSInteger)row {
    return 32; 
}
@end
