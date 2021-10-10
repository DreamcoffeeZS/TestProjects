//
//  WeakSymbol.h
//  TestSymbol
//
//  Created by ws on 2021/1/15.
//



// weak def
//int global_int_value;
//void weak_function(void);

int global_int_value __attribute__((weak));
void weak_function(void)  __attribute__((weak));

// weak 本地符号
//void weak_hidden_function(void) __attribute__((weak, visibility("hidden")));



