void subfunc() {
    char buf[8];
    buf[16] = 1;
}


int main() {
    int run_calc = 0;
    subfunc();
    if (run_calc) execl("/bin/gnome-calculator", 0);
}
