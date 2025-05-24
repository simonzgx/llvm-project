#include <stdint.h>

uint64_t foo(uint64_t a, uint64_t b) { return a & ~(a - b); }