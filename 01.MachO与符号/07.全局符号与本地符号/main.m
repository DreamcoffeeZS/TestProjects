#import <Foundation/Foundation.h>

int global_init_value __attribute__((visibility("hidden"))) = 10;
static int static_init_value = 9;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"%d", static_init_value);
    }
    return 0;
}
