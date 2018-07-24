//
//  IBLModuleCenter.m
//  IBLLoger
//
//  Created by simp on 2018/5/30.
//  Copyright © 2018年 ibellar. All rights reserved.
//

#import "IBLModuleCenter.h"
#import <objc/objc-runtime.h>
#import "IBLLogModule.h"

@interface IBLModuleCenter()

@property (nonatomic, strong) NSMutableArray * modules;

@end

@implementation IBLModuleCenter

+ (instancetype)center {
    static dispatch_once_t onceToken;
    static IBLModuleCenter *center = nil;
    dispatch_once(&onceToken, ^{
        center = [[IBLModuleCenter alloc] init];
    });
    return center;
}

- (instancetype)init {
    if (self = [super init]) {
        self.modules = [NSMutableArray array];
        [self loadModuels];
    }
    return self;
}


- (void)registClass:(NSString *)classStr {
    if (classStr && ![classStr isEqualToString:@""]) {
        id class =  NSClassFromString(classStr);
        if (![self isExistModule:class]) {
            IBLLogModule *module = [class module];
            [self.modules addObject:module];
        }
    }

}

- (void)loadModuels {
    int numClasses;
    Class *classes = NULL;
    numClasses = objc_getClassList(NULL,0);
    
    if (numClasses >0 )
    {
        classes = (__unsafe_unretained Class *)malloc(sizeof(Class) * numClasses);
        numClasses = objc_getClassList(classes, numClasses);
        for (int i = 0; i < numClasses; i++) {
             Class cls = classes[i];
            if (class_getSuperclass(classes[i]) == [IBLLogModule class]){
               
                IBLLogModule *module = [cls module];
                [self.modules addObject:module];
            }
        }
        free(classes);
    }
}

- (BOOL)isExistModule:(id)class {
    for (IBLLogModule *module in self.modules) {
        if ([module class] == class) {
            return YES;
        }
    }
    return NO;
}


@end
