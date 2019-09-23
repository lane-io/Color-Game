int mode;

final int intro = 0;
final int game = 1;
final int gameover = 2;

boolean qkey, rkey;

void setup() {
  size (800, 600);
    mode = 0;
}

void draw() {
  
    if (mode == 0) {
    intro();
  } else if (mode == 1) {
    game();
  } else if (mode == 2) {
    gameover();
  }
}
