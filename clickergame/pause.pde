void pause() {
   text("PAUSED", width/2, height/2, 67);
}

void pauseClicks() {
if(dist(mouseX, mouseY, 100, 100) < 50) {
    mode = game; }
}
