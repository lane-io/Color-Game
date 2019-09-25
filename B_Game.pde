color red = #E5063F;
color orange = #E57E06;
color yellow = #F2D208;
color green = #90D359;
color blue = #04B4B7;
color purple = #A40DCD;

boolean answer;

String[] colorWords = {"red", "orange", "yellow", "green", "blue", "purple"};

color[] colors = {red, orange, yellow, green, blue, purple};

int rng = int (random (1, 6));
int crng = int (random (1, 6));

int score = 0;

int startTime = millis();
int currentTime = 0;

void game() {
  background(255);

  currentTime = millis() - startTime;

  int s = currentTime;
  int ellipseSize = 400 - s/20;
  boolean timer = true;

  noStroke();
  fill (colors [crng], 50);
  ellipse (width/2, 275, ellipseSize, ellipseSize);

  if (ellipseSize < 0) {
    timer = false;
  }

  textSize (70);
  fill (colors [crng]);
  textAlign (CENTER, CENTER);
  text (colorWords[rng], width/2, 260);

  textSize(20);
  fill (0);
  text("SCORE : " + score, width/2, 50);

  textSize (30);
  textAlign (CENTER, CENTER);
  text ("true", 200, 450);
  text ("false", 600, 450);

  if ((qkey == true && rng == crng) || (rkey == true && rng != crng)) {
    answer = true;
    if (answer == true) {

      currentTime = 0;
      startTime = millis();

      rng = int (random (1, 6));
      crng = int (random (1, 6));
      score = score + 1;
    }
    if (key == 'q' || key == 'Q') qkey = false;
    if (key == 'r' || key == 'R') rkey = false;
  }

  if ((qkey == true && rng != crng) || (rkey == true && rng == crng) || (timer == false)) {
    answer = false;
    if (answer == false) {
      mode = gameover;
    }
    if (key == 'q' || key == 'Q') qkey = false;
    if (key == 'r' || key == 'R') rkey = false;
  }
}
