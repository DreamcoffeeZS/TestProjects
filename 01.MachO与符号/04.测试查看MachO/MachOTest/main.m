//
//  main.m
//  MachOTest
//
//  Created by zhoushuai on 2021/10/26.
//

#import <Foundation/Foundation.h>

int global_init_value = 10;
static int static_init_value = 9;

int main(int argc, const char * argv[]) {
    NSLog(@"%d", static_init_value);
    return 0;
}
