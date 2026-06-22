void blueWins() {
  background(210);
  fill(#3B82F6);
  textSize(80);
  text("BLUE WINS!", width/2, height/2);
}

void blueWinsClicks() {
  reset();
  mode = intro;
}
