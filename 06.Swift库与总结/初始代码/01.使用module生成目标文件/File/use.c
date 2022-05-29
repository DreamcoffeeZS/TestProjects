/* use.c */
#import "B.h"
void use() {
#ifdef ENABLE_A
  a();
#endif
}
