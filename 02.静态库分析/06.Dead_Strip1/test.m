#import <Foundation/Foundation.h>
#import "TestExample.h"

// 全局
void global_function() {
    
}

int main(){
    global_function();
    NSLog(@"testApp----");
    TestExample *manager = [TestExample new];
    [manager lg_test: nil];
    return 0;
}




