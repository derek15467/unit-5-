void gameover() {
  background(200);
  textSize(100);
  text("Right Wins!", width/2, height/2);
}

void gameoverClicks() {
  mode = intro;

  score = 0;
  score2 = 0;

  ballx = width/2;
  bally = height/2;

  vx = 17;
  vy = random(-2, 2);
}
