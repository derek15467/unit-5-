void gameover2() {
  background(200);
  textSize(100);
  text("Left Wins!", width/2, height/2); }
  
void gameover2Clicks() {
  mode = intro;

  score = 0;
  score2 = 0;

  ballx = width/2;
  bally = height/2;

  vx = 17;
  vy = random(-2, 2);
}
