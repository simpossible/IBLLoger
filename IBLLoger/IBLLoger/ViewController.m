//
//  ViewController.m
//  IBLLoger
//
//  Created by simp on 2018/5/30.
//  Copyright © 2018年 ibellar. All rights reserved.
//

#import "ViewController.h"
#import "IBLModuleCenter.h"
#import "ModuleButtonItem.h"
#import <AppKit/AppKit.h>
#import <AppKit/NSCollectionViewFlowLayout.h>

#define Module_Reuse @"mr"

@interface ViewController()<NSCollectionViewDelegate,NSCollectionViewDataSource>

@property (nonatomic, strong) NSCollectionView * collectionView;



@end

@implementation ViewController

- (void)viewDidLoad {
    
    
    [super viewDidLoad];
//    self.view.bounds = NSMakeRect(0, 0, 750, 150);
    self.view.wantsLayer = YES;
    [self.view.layer setBackgroundColor:[[NSColor orangeColor] CGColor]];
    
    [IBLModuleCenter center];
    
    [self initialUI];
    // Do any additional setup after loading the view.
}

- (void)initialUI {
    [self initialModulesTable];
}

- (void)initialModulesTable {
    

    
    self.collectionView = [[NSCollectionView alloc] initWithFrame:self.view.bounds];
//    [self.view addSubview:self.collectionView];
    self.collectionView.collectionViewLayout = [[NSCollectionViewFlowLayout alloc] init];

    self.collectionView.dataSource = self;
    self.collectionView.delegate = self;
    [self.collectionView setSelectable:YES];
    [self.collectionView registerClass:[ModuleButtonItem class] forItemWithIdentifier:Module_Reuse];
    
    NSScrollView *scrollView = [[NSScrollView alloc] initWithFrame:self.view.bounds];
//    NSClipView *clip = [[NSClipView alloc] initWithFrame:self.view.bounds];
//    clip.documentView = self.collectionView;;
    scrollView.documentView = self.collectionView;
    [self.view addSubview:scrollView];
}

- (NSInteger)collectionView:(NSCollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
       return [IBLModuleCenter center].modules.count;
}

- (NSCollectionViewItem *)collectionView:(NSCollectionView *)collectionView itemForRepresentedObjectAtIndexPath:(NSIndexPath *)indexPath  {
    
    ModuleButtonItem *item = [collectionView makeItemWithIdentifier:Module_Reuse forIndexPath:indexPath];
    IBLLogModule *module = [[IBLModuleCenter center].modules objectAtIndex:indexPath.item];
    item.module = module;
    return item;
}

- (void)collectionView:(NSCollectionView *)collectionView didSelectItemsAtIndexPaths:(NSSet<NSIndexPath *> *)indexPaths {
    NSLog(@"%@",indexPaths);
    for (NSIndexPath *index in indexPaths) {
        IBLLogModule *module = [[IBLModuleCenter center].modules objectAtIndex:index.item];
        [module show];
    }
}

- (NSSize)collectionView:(NSCollectionView *)collectionView layout:(NSCollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return NSMakeSize(72, 72);
}

- (NSEdgeInsets)collectionView:(NSCollectionView *)collectionView layout:(NSCollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return NSEdgeInsetsMake(10, 10, 10, 10);
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
