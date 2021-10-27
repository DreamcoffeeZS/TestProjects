//
//  ViewController.m
//  ZSApp
//
//  Created by zhoushuai on 2021/10/24.
//

#import "ViewController.h"
#import <ZSTools.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ZSTools *tools = [ZSTools new];
    [tools testPrint:nil];
}

@end
