void intro() {
  fill(255);
  rect(300, 600, 400, 100);
}

void introClicks() {
  if (mouseX > 300 && mouseX < 700 && mouseY > 600 && mouseY < 700) {
  mode = game; }
}
