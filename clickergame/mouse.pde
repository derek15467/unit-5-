void mouseReleased() {
  if (mode == intro) {
    introClicks();   
  }  else if (mode == game) {
    gameClicks();
  }  else if (mode == pause) {
    pauseClicks();
  }  else if (mode == gameover) {
    gameoverClicks();
  }  else if (mode == options) {
    optionsClicks(); }
}

void mouseDragged() {
  if (mode == options) {

    if (mouseY > 620 && mouseY < 680) {
      sliderX = constrain(mouseX, 250, 750);
    }

  }
}
