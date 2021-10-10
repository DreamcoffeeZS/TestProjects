//
//  WeakSymbol.m
//  TestSymbol
//
//  Created by ws on 2021/1/15.
//

#import <Foundation/Foundation.h>
#import "WeakSymbol.h"

// 全局符号 -》导出符号
void weak_function(void) {
    NSLog(@"weak_function");
}

//void weak_hidden_function(void) {
//    NSLog(@"weak_hidden_function");
//}
