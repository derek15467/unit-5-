void lose() {
  background(#B2222C);
  textSize(100);
  text("GAME OVER", width/2, 400);
  textSize(50);
}

void loseClicks() {
  mode = intro;
  reset();
}
