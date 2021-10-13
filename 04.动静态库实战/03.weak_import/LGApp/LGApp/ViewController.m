//
//  ViewController.m
//  LGApp
//
//  Created by ws on 2021/1/25.
//

#import "ViewController.h"
#import <SYTimer.h>


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    SYTimer *timer = [SYTimer new];
    NSLog(@"%@", timer);
}


@end
