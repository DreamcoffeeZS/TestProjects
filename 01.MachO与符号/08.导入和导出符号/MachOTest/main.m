//
//  main.m
//  MachOTest
//
//  Created by zhoushuai on 2021/10/2.
//

#import <Foundation/Foundation.h>
//#import "WeakImportSymbol.h"
//#import "WeakSymbol.h"

//查看重定位符号表
//int main(int argc, const char * argv[]) {
//    NSLog(@"Hello world!");
//    return 0;
//}


//验证全局符号与本地符号
//int global_init_value = 10;
////int global_init_value __attribute__((visibility("hidden"))) = 10;
//static int static_init_value = 9;
//
//int main(int argc, const char * argv[]) {
//    NSLog(@"%d", static_init_value);
//    return 0;
//}


//验证导出符号表
//int global_init_value = 10;
//static int static_init_value = 9;
//
//int main(int argc, const char * argv[]) {
//    NSLog(@"%d", static_init_value);
//    return 0;
//}


//验证间接符号表
//
//int main(int argc, const char * argv[]) {
//    NSLog(@"Hello World");
//    return 0;
//}


//验证弱引用符号
//int main(int argc, char *argv[]) {
//    if (weak_import_function) {
//        weak_import_function();
//    }
//  return 0;
//}


//验证弱定义符号
//int global_int_value;
//
////void weak_function(void)  __attribute__((weak));
//void weak_function(void) {
//    NSLog(@"weak_function_main");
//}
//
//int main(int argc, char *argv[]) {
//    weak_function();
//  return 0;
//}


//测试Common Symbol
//int global_uninit_value;

//int global_init_value = 10;
//int global_init_value;
//int main(int argc, char *argv[]) {
//  return 0;
//}


//测试重新导出符号
//int main(int argc, char *argv[]) {
//    NSLog(@"Hello World");
//  return 0;
//}


int main(int argc, char *argv[]) {
  return 0;
}
