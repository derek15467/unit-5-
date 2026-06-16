void intro() {
  background(255);
  image(gif[f], 0, 0, width, height);

  f = f + 1;

  if (f == numberOfFrames) {
    f = 0; }
    
  textSize(80);
  text("BREAKOUT!", width/2, 200);
  textSize(36);
  text("<Click To Start>", width/2, 900);
}

void introClicks() {
  mode = game;
}
