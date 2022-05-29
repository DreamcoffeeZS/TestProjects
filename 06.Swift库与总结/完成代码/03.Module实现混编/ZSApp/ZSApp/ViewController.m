//
//  ViewController.m
//  ZSApp
//
//  Created by zhoushuai on 2021/10/24.
//

#import "ViewController.h"

// 只配置ZSSwiftFramework.modulemap
//#import <ZSSwiftFramework/ZSSwiftFramework.h>
//#import <ZSSwiftFramework/ZSOCStudent.h>       // 可单独引用ZSOCStudent

//同时配置ZSSwiftFramework.private.modulemap
#import <ZSSwiftFramework/ZSSwiftFramework.h>
#import <ZSSwiftFramework/ZSOCStudent.h>
//@import ZSSwiftFramework_Private.ZSOCStudent;

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ZSSwiftTeacher *teacher = [ZSSwiftTeacher new];
    [teacher talk];
    
    ZSOCStudent *student = [ZSOCStudent new];
    [student ask];
}

@end
