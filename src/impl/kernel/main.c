#include "print.h"

void kernel_main() {
	print_clear();
	print_set_color(PRINT_COLOR_BLUE, PRINT_COLOR_BLACK);
	print_str("DaveOS - Dave's First 64-Bit Kernel");
}
