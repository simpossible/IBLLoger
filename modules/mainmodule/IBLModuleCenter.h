//
//  IBLModuleCenter.h
//  IBLLoger
//
//  Created by simp on 2018/5/30.
//  Copyright © 2018年 ibellar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IBLLogModule.h"

@interface IBLModuleCenter : NSObject


@property (nonatomic, strong, readonly) NSMutableArray * modules;

+ (instancetype)center;

- (void)registClass:(NSString *)classStr;

@end
