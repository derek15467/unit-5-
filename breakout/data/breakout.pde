int mode;
final int intro = 1;
final int game = 2;
final int pause = 3;
final int win = 4;
final int lose = 5;

float paddlex, paddley, paddled;
float ballx, bally, balld;
float vx, vy;
int score, lives;
int[] x;
int[] y;
boolean[] alive;
int n;
int tempx, tempy;
boolean akey, dkey;


void setup() {
  size(1000, 1000);
  mode = intro;
  
  score = 0;
  lives = 3;
  paddlex = width/2;
  paddley = height;
  paddled = 120;
  ballx = width/2;
  bally = 500;
  balld = 15;
  vx = 0;
  vy = 10;
  akey = dkey = false;
  
  //brick variables

  n = 24;
  x = new int[n];
  y = new int[n];
  alive = new boolean[n];
  tempx = 125;
  tempy = 100;
  
  int i = 0;
  while (i < n) {
    x[i] = tempx;
    y[i] = tempy;
    alive[i] = true;
    tempx = tempx + 150;
    if (tempx > 875) {
      tempx = 125;
      tempy = tempy + 100; }
    i=i+1; }
}


void draw() {
  if (mode == intro) {
    intro();   
  }  else if (mode == game) {
    game();
  }  else if (mode == pause) {
    pause();
  }  else if (mode == win) {
    win();
  }  else if (mode == lose) {
    lose(); } else {
    println("Error: Mode = " + mode); }
  }
