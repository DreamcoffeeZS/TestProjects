//
//  StaticLibrary.m
//  StaticLibrary
//
//  Created by zhoushuai on 2021/10/5.
//

#import "StaticLibrary.h"
#import "StaticLibrary+Category.h"

@implementation StaticLibrary

- (void)test {
    [self test_category]; //这里调用类目的方法
}

@end
