//
//  ZSOCTool.h
//  OCFramework
//
//  Created by zhoushuai on 2022/5/29.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM (NSUInteger, Weather) {
    WeatherSun,
    WeatherRain
};

// NS_TYPED_EXTENSIBLE_ENUM：让编译器使用Struct
//typedef NSString * PersonName;
typedef NSString * PersonName NS_TYPED_EXTENSIBLE_ENUM;


@interface ZSOCTool : NSObject

- (instancetype)initWithName:(NSString *)name;

// NS_SWIFT_NAME宏：可以给函数添加一些详细信息以使函数清晰可见
//- (NSString *)findNameForIndex:(NSUInteger)index;
- (NSString *)findNameForIndex:(NSUInteger) index NS_SWIFT_NAME(findName(forIndex:));


// NS_REFINED_FOR_SWIFT:从现在开始，Swift的Clang Importer将做一些额外的工作并将该方法导入为私有方法，并以双下划线字符开头__
//- (BOOL)handleInfo:( NSDictionary<NSString *, id> *)options;
- (BOOL)handleInfo:( NSDictionary<NSString *, id> *)options NS_REFINED_FOR_SWIFT;


// 在apinotes文件中配置该方法不可调用
- (void)specialOCMethod;

@end

NS_ASSUME_NONNULL_END
