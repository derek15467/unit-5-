void gameover() {
  background(#B2222C);
  textSize(100);
  text("GAME OVER", width/2, height/2);
}


void gameoverClicks() {
  mode = intro;
  reset();
}
