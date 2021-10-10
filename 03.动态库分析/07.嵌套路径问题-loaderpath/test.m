#import <Foundation/Foundation.h>
#import "TestExample.h"
//#import "TestExampleLog.h"

int main(){
    NSLog(@"testApp----");
    TestExample *manager = [TestExample new];
    [manager lg_test: nil];
//    TestExampleLog *log = [TestExampleLog new];
//    NSLog(@"testApp----%@",log);
    return 0;
}




