void gameover() {
  background(#B2222C);
  textSize(100);
  text("GAME OVER", width/2, 400);
  text("High Score", width/2, 600);
}


void gameoverClicks() {
  mode = intro;
  reset();
}
