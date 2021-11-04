//
//  ZSObject.m
//  ZSFramework
//
//  Created by zhoushuai on 2021/10/30.
//

#import "ZSObject.h"
#import <AFNetworking/AFNetworking.h>

@implementation ZSObject

- (void)testObject {
    NSLog(@"[ZSObject] testObject");
    AFNetworkReachabilityManager *m = [AFNetworkReachabilityManager manager];
    NSLog(@"[ZSObject] 创建manager:%@",m);
}

@end
