//
//  LGNetworkManagerTests.m
//  LGNetworkManagerTests
//
//  Created by ws on 2020/11/11.
//

#import <XCTest/XCTest.h>
#import <LGNetworkManager/LGNetworkManager.h>
#import <AFNetworking/AFNetworking.h>

@interface LGNetworkManagerTests : XCTestCase

@end

@implementation LGNetworkManagerTests

// 动态库 -》 静态库
// 导出符号
// 问题 -〉动态库 -》静态库符号暴露出来
- (void)testExample {
    LGAFNetworkingManager *manager = [LGAFNetworkingManager manager];
    NSLog(@"%@", manager);
    AFNetworkReachabilityManager *m = [AFNetworkReachabilityManager manager];
    NSLog(@"%@", m);
}


@end
