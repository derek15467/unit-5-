int mode;
final int intro = 1;
final int game = 2;
final int redWins = 3;
final int blueWins = 4;

float redx, redy, redd, bluex, bluey, blued;
boolean wkey, upkey;
boolean green = true;
int timer;


void setup() {
  size(1250, 800);
  textAlign(CENTER, CENTER);
  mode = intro;
  redx = 67;
  bluex = 67;
  bluey = 200;
  redy = 600;
  redd = blued = 50;
}


void draw() {
 
    
  if (mode == intro) {
    intro();   
  }  else if (mode == game) {
    game();
  } else if (mode == redWins){
    redWins();
  } else if (mode == blueWins) {
    blueWins();
    println("Error: Mode = " + mode);
  }
}
