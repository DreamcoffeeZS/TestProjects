//
//  LGAFNetworkingManger.m
//  LGNetworkManager
//
//  Created by ws on 2020/11/11.
//

#import "LGAFNetworkingManager.h"
#import <AFNetworking/AFNetworking.h>

@implementation LGAFNetworkingManager
+ (instancetype)manager {
    
    NSLog(@"%@", [AFNetworkReachabilityManager manager]);
    return [LGAFNetworkingManager new];
}

@end
