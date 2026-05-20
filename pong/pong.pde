
int mode;
final int intro = 1;
final int game = 2;
final int pause = 3;
final int gameover = 4;

//entity variables
float leftx, lefty, leftd, rightx, righty, rightd;
float ballx, bally, balld; //ball

void setup() {
  size(1000, 1000);
  mode = intro;
}

void draw() {
  if (mode == intro) {
    intro();
  } else if (mode == game) {
    game();
  } else if (mode == pause) {
    pause();
  } else if (mode == gameover) {
    gameover();
  } else {
    println("Mode error: " + mode);
  }
}
  
