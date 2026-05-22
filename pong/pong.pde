
int mode;
final int intro = 1;
final int game = 2;
final int pause = 3;
final int gameover = 4;

//entity variables
float leftx, lefty, leftd, rightx, righty, rightd;
float ballx, bally, balld; //ball
float vx, vy;


//keyboard variables
boolean wkey, skey, upkey, downkey;

void setup() {
  size(1000, 1000);
  mode = intro;
  
  //initialize paddles
  leftx = 0;
  lefty = height/2;
  leftd = 200;
  rightx = width;
  righty = height/2;
  rightd = 200;
  
  //initialize ball
  ballx = width/2;
  bally = height/2;
  balld = 50;
  
  wkey = skey = upkey = downkey = false;
  
  vx = 17;
  vy = 17;
  


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
  
