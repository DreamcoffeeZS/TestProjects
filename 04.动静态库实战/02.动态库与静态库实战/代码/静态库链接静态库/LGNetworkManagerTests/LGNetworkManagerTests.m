//
//  LGNetworkManagerTests.m
//  LGNetworkManagerTests
//
//  Created by ws on 2020/11/11.
//

#import <XCTest/XCTest.h>
#import <LGNetworkManager/LGNetworkManager.h>

@interface LGNetworkManagerTests : XCTestCase

@end

@implementation LGNetworkManagerTests

// app+静态库->静态库
// 组件静态库-》静态库
- (void)testExample {
    LGAFNetworkingManager *manager = [LGAFNetworkingManager manager];
    NSLog(@"%@", manager);
}


@end
