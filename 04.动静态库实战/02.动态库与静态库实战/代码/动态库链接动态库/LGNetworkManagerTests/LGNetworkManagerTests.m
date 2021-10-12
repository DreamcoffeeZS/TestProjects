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

// APP -> Manger -> AFN
// 脚本 -》 copy
// 引入 -〉 target
// LGNetworkManager -》app
// 符号
// 
- (void)testExample {
    LGAFNetworkingManager *manager = [LGAFNetworkingManager manager];
    NSLog(@"%@", manager);
}


@end
