#include <ncurses.h>
#include <vector>
#include <cstdlib>
#include <ctime>
#include <unistd.h>

struct Star {
    int x, y;
};

int main() {
    initscr();     
    noecho();         
    curs_set(0);       
    nodelay(stdscr, TRUE);
    
    int max_x, max_y;
    getmaxyx(stdscr, max_y, max_x);
    
    std::vector<Star> stars;
    srand(time(0));
    
    for (int i = 0; i < 20; i++) {
        stars.push_back({rand() % max_x, rand() % max_y});
    }
    
    while (true) {
        clear();
        for (auto &star : stars) {
            mvprintw(star.y, star.x, "*");
            star.y++;
            if (star.y >= max_y) {
                star.y = 0;
                star.x = rand() % max_x;
            }
        }
        refresh();
        usleep(50000);
        
        if (getch() == 'q') {
            break;
        }
    }
    
    endwin(); 
    return 0;
}
