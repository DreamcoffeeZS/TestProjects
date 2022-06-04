#import <Foundation/Foundation.h>
// 符号表 -》NSlog -〉 导出符号 -》导入符号 -〉符号表 -》 nslog

void SomeNewFunction_weak_import(void) __attribute__((weak_import));

void SomeNewFunction_weak_import(void) {
    NSLog(@"SomeNewFunction_weak_import");
}

void SomeNewFunction_weak(void) __attribute__((weak));

void SomeNewFunction_weak(void) {
    NSLog(@"SomeNewFunction_weak");
}

void SomeNewFunction_weak_hidden(void) __attribute__((weak, visibility("hidden")));

void SomeNewFunction_weak_hidden(void) {
    NSLog(@"SomeNewFunction_weak");
}
// global_uninit_value = 0;
int global_uninit_value;
// 外部符号
int global_init_value = 10;


int global_init_value;

double default_y __attribute__((visibility("default"))) = 99 ;

//
void static_SomeNewFunction(void) __attribute__((visibility("hidden")));
void static_SomeNewFunction(void) {
    
}

// 外部
void SomeNewFunction_global(void) {
    NSLog(@"SomeNewFunction_weak");
}

double default_x;

static int static_init_value = 9;

static int static_init_value;

static int static_uninit_value;

static NSObject *object = nil;

static int static_uninit_value;

int main() {
    default_x = 11;
    static_uninit_value = 10;
    SomeNewFunction_global();
    int x;
    // 外部
    NSLog(@"LG_Cat-1");
    int a[4] = {1,2,3,4};
    NSLog(@"LG_Cat-2");
    int m = 10;
    NSLog(@"LG_Cat-3");
    return 0;
}

