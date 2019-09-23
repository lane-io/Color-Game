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

void game() {
  background(255);

  textSize (70);
  fill (colors [crng]);
  textAlign (CENTER, CENTER);
  text (colorWords[rng], width/2, 250);

  textSize (30);
  fill (0);
  textAlign (CENTER, CENTER);
  text ("true", 200, 450);
  text ("false", 600, 450);

  if (qkey == true && rng == crng) {
    answer = true;
    if (answer == true) {
      rng = int (random (1, 6));
      crng = int (random (1, 6));
    }
  }

  if (rkey == true && rng != crng) {
    answer = true;
    if (answer == true) {
      rng = int (random (1, 6));
      crng = int (random (1, 6));
    }
  }

  if (qkey == true && rng != crng) {
    answer = false;
    if (answer == false) {
      mode = gameover;
    }
  }

  if (rkey == true && rng == crng) {
    answer = false;
    if (answer == false) {
      mode = gameover;
    }
  }
}
