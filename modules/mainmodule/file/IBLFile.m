//
//  IBLFile.m
//  IBLLoger
//
//  Created by simp on 2018/7/23.
//  Copyright © 2018年 ibellar. All rights reserved.
//

#import "IBLFile.h"

@interface IBLFile()

@property (nonatomic, strong) NSString * path;

@end

@implementation IBLFile

- (instancetype)initWithPath:(NSString *)path {
    if (self = [super init]) {
        self.path = path;
    }
    return self;
}

+ (instancetype)fileWithPath:(NSString *)path {
    IBLFile *ppath = [[self alloc] initWithPath:path];
    return ppath;
}

@end
