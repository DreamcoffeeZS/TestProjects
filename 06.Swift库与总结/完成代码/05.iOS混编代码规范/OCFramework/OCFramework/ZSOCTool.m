//
//  ZSOCTool.m
//  OCFramework
//
//  Created by zhoushuai on 2022/5/29.
//

#import "ZSOCTool.h"

@implementation ZSOCTool

- (instancetype)initWithName:(NSString *)name {
    if (self == [super init]) {
        
    }
    return self;
}

- (NSString *)findNameForIndex:(NSUInteger)index {
    return @"ZS";
}

- (BOOL)handleInfo:(NSDictionary<NSString *,id> *)options {
    return YES;
}


- (void)specialOCMethod {
    NSLog(@"This is a special Method for OC !!!");
}
@end
