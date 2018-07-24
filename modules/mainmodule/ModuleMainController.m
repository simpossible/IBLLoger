//
//  ModuleMainController.m
//  IBLLoger
//
//  Created by simp on 2018/5/30.
//  Copyright © 2018年 ibellar. All rights reserved.
//

#import "ModuleMainController.h"

@interface ModuleMainController ()

@end

@implementation ModuleMainController

- (instancetype)initWithNibName:(NSNibName)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
       
        self.view.wantsLayer = YES;
        [self.view.layer setBackgroundColor:[[NSColor orangeColor] CGColor]];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.wantsLayer = YES;
    [self.view.layer setBackgroundColor:[[NSColor orangeColor] CGColor]];
    // Do view setup here.
}

@end
