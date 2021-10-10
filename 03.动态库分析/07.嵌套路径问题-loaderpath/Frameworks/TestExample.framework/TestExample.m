#import "TestExample.h"
#import "TestExampleLog.h"



@implementation TestExample

- (void)lg_test:(_Nullable id)e {
    NSLog(@"TestExample----");
    TestExampleLog *log = [TestExampleLog new];
    [log test_example_log: self];
}
@end




