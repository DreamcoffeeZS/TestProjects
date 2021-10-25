//
//  ViewController.m
//  ZSApp
//
//  Created by zhoushuai on 2021/10/24.
//

#import "ViewController.h"
#import <ZSTools/ZSObject.h>
@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    ZSObject *object = [[ZSObject alloc] init];
    NSLog(@"打印结果:%@",object);
}
@end
