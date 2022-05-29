//
//  ViewController.m
//  ZSApp
//
//  Created by zhoushuai on 2021/10/24.
//

#import "ViewController.h"

// 测试1：在配置文件中增加配置1，即可导入如下头文件
#import <ZSSwiftB.h>
#import <ZSSwiftA.h>

// 调用自身工程里的ZSSwiftTest，需要增加此引用
#import <ZSApp-Swift.h>

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// 测试2：调用静态库中的Swift代码(在配置文件中增加配置2)
	// 1.由于是OC与Siwft的混编，所以还必须创建一个Bridging Header桥接文件
	// 2.任意创建一个Swift文件(比如ZSSWiftTest)，Xcode将自动提示创建桥接文件
	// 3.这里的究竟使用的是哪个ZSSwiftTeacher，取决于import的ZSSwiftA、ZSSwiftB的顺序
	ZSSwiftTeacher *tearcher = [ZSSwiftTeacher new];
	[tearcher walk];

	// 测试3：当前工程中的Swift文件，调用中静态库Swift代码(在配置文件中增加配置3)
	// 1.注意原modulemap的文件位置需要与Headers在同一层级
	ZSSwiftTest *test = [ZSSwiftTest new];
	[test walk];
}

@end
