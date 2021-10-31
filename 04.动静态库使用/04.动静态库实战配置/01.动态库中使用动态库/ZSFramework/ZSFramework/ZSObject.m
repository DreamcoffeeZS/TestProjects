//
//  ZSObject.m
//  ZSFramework
//
//  Created by zhoushuai on 2021/10/30.
//

#import "ZSObject.h"
#import <AFNetworking/AFNetworking.h>
#import "ZSAPPObject.h"

@implementation ZSObject

- (void)testObject {
    [[ZSAPPObject new] testAppObject];

    NSLog(@"[ZSObject] testObject");
    
    AFNetworkReachabilityManager *m = [AFNetworkReachabilityManager manager];
    NSLog(@"[ZSObject] 创建manager:%@",m);
}

@end
