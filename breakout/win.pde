void win() {
  background(#6F3BEA);
  textSize(100);
  text("You Win!", width/2, 400);
  textSize(50);
}

void winClicks() {
  mode = intro;
  reset();
}
