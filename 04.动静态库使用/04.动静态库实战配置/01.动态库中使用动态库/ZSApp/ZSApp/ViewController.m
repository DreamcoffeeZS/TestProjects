//
//  ViewController.m
//  ZSApp
//
//  Created by zhoushuai on 2021/10/31.
//

#import "ViewController.h"
#import <ZSFramework/ZSFramework.h>
#import <AFNetworking/AFNetworking.h>

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ZSObject *obj = [ZSObject new];
    [obj testObject];
    
    AFNetworkReachabilityManager *m = [AFNetworkReachabilityManager manager];
    NSLog(@"[ViewController] 创建manager:%@",m);

}

@end
