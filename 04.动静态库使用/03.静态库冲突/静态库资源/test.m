#import <Foundation/Foundation.h>
#import "ZSTools.h"

// 全局
void global_function() {
    
}

int main(){
    global_function();
    NSLog(@"testApp----");
    ZSTools *tools = [ZSTools new];
    [tools testPrint: nil];
    return 0;
}




