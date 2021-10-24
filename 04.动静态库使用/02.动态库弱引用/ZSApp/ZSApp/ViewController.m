//
//  ViewController.m
//  ZSApp
//
//  Created by zhoushuai on 2021/10/24.
//

#import "ViewController.h"
#import <ZSObject.h>
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ZSObject *object = [[ZSObject alloc] init];
    [object testPrint];
}

@end
