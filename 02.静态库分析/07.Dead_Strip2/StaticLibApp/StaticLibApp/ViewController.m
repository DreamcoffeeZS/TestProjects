//
//  ViewController.m
//  StaticLibApp
//
//  Created by zhoushuai on 2021/10/5.
//

#import "ViewController.h"
#import <StaticLibrary/StaticLibrary.h>

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    StaticLibrary *lib = [StaticLibrary new];
    [lib test];
    
}

@end
