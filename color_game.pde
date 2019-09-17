int mode;

final int intro = 0;
final int game = 1;
final int gamewin = 2;
final int gameover = 3;

void setup() {
  size (800, 600);
    mode = 0;
}

void draw() {
  
    if (mode == 0) {
    intro();
  } else if (mode == 1) {
    game();
  } 
}

void mouseReleased() {
  if (mode == intro) {
    mode = game;
  } else if (mode == game) {
    mode = gamewin;
  } else if (mode == gamewin) {
    mode = gameover;
  }
}
