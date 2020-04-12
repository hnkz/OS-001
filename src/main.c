#include <fb.h>

void start_kernel(
        void *_t __attribute__ ((unused)),
        struct framebuffer *_fb,
        void *_fs_start __attribute__ ((unused))
){
    fb_init(_fb);
    set_fg(255, 255, 255);
    set_bg(0, 75, 250);
    clear_screen();

    puts("HELLO WORLD!: KAZUKI; HANAI");
    while (1);
}
