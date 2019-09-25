void keyPressed () {

  if (key == 'q' || key == 'Q') qkey = true;
  if (key == 'r' || key == 'R') rkey = true;
}

void mouseReleased() {

  if (mode == intro) {
    startTime = millis();
    currentTime = 0;
    mode = game;
  } else if (mode == gameover) {
    mode = intro;
  }
}
