//
//  LGOneObject.m
//  LGOneFramework
//
//  Created by ws on 2020/10/20.
//

#ifndef AFN_HEADER_PATH
  #define AFN_HEADER_PATH <AFNetworking/AFNetworking.h>
#endif

#ifndef AFN
  #define AFN __has_include(AFN_HEADER_PATH)
#endif

#import "LGOneObject.h"

#if AFN
#import AFN_HEADER_PATH
#endif


@implementation LGOneObject


- (void)testOneObject {
#if AFN
    AFNetworkReachabilityManager *manager = [AFNetworkReachabilityManager manager];
    NSLog(@"LGFramework-----LGOneObject-----AFN: %@", manager);
#else
    NSLog(@"LGFramework-----LGOneObject-----NO AFN");
#endif
}
@end
