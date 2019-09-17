color red = #E5063F;
color orange = #E57E06;
color yellow = #F2D208;
color green = #90D359;
color blue = #04B4B7;
color purple = #A40DCD;

void game() {
  background(255);

  String[] colorWords = {"red", "orange", "yellow", "green", "blue", "purple"};

  color[] colors = {red, orange, yellow, green, blue, purple};

  int rng = int (random (1, 6));
  int crng = int (random (1, 6));

  textSize (70);
  fill (colors [crng]);
  textAlign (CENTER, CENTER);
  text (colorWords[rng], width/2, height/2);

  if (rng == crng) {
    mode = gamewin;
  } else if (rng != crng) {
    mode = gameover;
  }
}
