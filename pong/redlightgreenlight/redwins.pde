void redWins() {
  background(210);
  fill(#D61A40);
  textSize(80);
  text("RED WINS!", width/2, height/2);
}

void redWinsClicks() {
  reset();
  mode = intro;
}
