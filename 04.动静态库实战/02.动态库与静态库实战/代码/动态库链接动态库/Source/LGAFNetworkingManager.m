//
//  LGAFNetworkingManger.m
//  LGNetworkManager
//
//  Created by ws on 2020/11/11.
//

#import "LGAFNetworkingManager.h"
#import <AFNetworking/AFNetworking.h>
#import "LGAppObject.h"

@implementation LGAFNetworkingManager
+ (instancetype)manager {
    
    NSLog(@"%@", [AFNetworkReachabilityManager manager]);
    LGAppObject *obj = [LGAppObject new];
    [obj test_app];
    return [LGAFNetworkingManager new];
}

@end
