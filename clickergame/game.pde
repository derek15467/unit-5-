void game() {
  background(0);
  fill(255);
  circle(x, y, d);
  
  //moving
  x = x + vx;
  y = y + vy;


  //bouncing
  if (x < d/2 || x > width-d/2) {
    vx = vx * -1; }
    
    if(y < d/2 || y > height-d/2) {
      vy = vy * -1; }

}
void gameClicks() {
  
}
