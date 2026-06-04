void gameover() {
  background(#B2222C);
  textSize(100);
  text("GAME OVER", width/2, 400);
  textSize(50);
  text("High Score: " + highScore, width/2, 650);
}



void gameoverClicks() {
  mode = intro;
  reset();
}
