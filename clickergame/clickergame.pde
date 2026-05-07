int mode;
final int intro = 1;
final int game = 2;
final int pause = 3;
final int gameover = 3;

//TARGET VARIABLES
float x, y, d;
float vx, vy;
int score, lives;

void setup() {
  size(1000, 1000);
  mode = intro;
  textAlign(CENTER, CENTER);
  
  //target initialization
  x = width/2;
  y = height/2;
  d = 100;
  score = 0;
  lives = 3;
  vx = random(-10, 10);
  vy = random(-10, 10);
}


void draw() {
  if (mode == intro) {
    intro();   
  }  else if (mode == game) {
    game();
  }  else if (mode == pause) {
    pause();
  }  else if (mode == gameover) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
}
