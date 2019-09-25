int highscore = score;

void gameover() {
  background(255);


  if (score > highscore) {
    highscore = score;
  }

  textSize (40);
  fill (0);
  textAlign (CENTER, CENTER);
  text ("f in chat guys :(", width/2, 250);

  textSize(20);
  fill (0);
  text("HIGHSCORE : " + highscore, width/2, 300);

  score = 0;
}
