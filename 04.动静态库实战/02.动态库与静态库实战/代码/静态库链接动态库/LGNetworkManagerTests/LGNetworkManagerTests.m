//
//  LGNetworkManagerTests.m
//  LGNetworkManagerTests
//
//  Created by ws on 2020/11/11.
//

#import <XCTest/XCTest.h>
#import <LGNetworkManager/LGNetworkManager.h>
//#import <AFNetworking.h>

@interface LGNetworkManagerTests : XCTestCase

@end

@implementation LGNetworkManagerTests

// App= App + 静态库
// App-》动态库
// 静态库-》动态库
// 动动
- (void)testExample {
    LGAFNetworkingManager *manager = [LGAFNetworkingManager manager];
//    AFNetworkReachabilityManager *ma = [AFNetworkReachabilityManager manager];
    NSLog(@"%@", manager);
}


@end
