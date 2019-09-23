void keyPressed () {

  if (key == 'q' || key == 'Q') qkey = true;
  if (key == 'r' || key == 'R') rkey = true;
}

void keyReleased () {

  if (key == 'q' || key == 'Q') qkey = false;
  if (key == 'r' || key == 'R') rkey = false;
}


void mouseReleased() {
  
  if (mode == intro) {
    mode = game; 
  } else if (mode == gameover) {
    mode = intro;
  }
}
