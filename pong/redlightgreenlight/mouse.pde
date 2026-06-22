void mouseReleased() {
  if (mode == intro) {
    introClicks();
  } else if (mode == game) {
    gameClicks();    
  } else if (mode == redWins) {
    redWinsClicks(); 
  } else if (mode == blueWins) {
    blueWinsClicks(); 
  }    
}
