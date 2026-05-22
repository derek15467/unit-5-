void game() {
  //table
  background(#2964AF);
  strokeWeight(5);
  stroke(255);
  line(width/2, 0, width/2, 1000);
  
  //paddles
  noStroke();
  fill(255, 0, 0);
  circle(leftx, lefty, leftd);
  fill(0);
  circle(rightx, righty, rightd);
  
  //ball
  fill(#F5A42A);
  circle(ballx, bally, balld);
  
  if (wkey == true) lefty = lefty - 10;
  if (skey == true) lefty = lefty + 10;
  if (upkey == true) righty = righty - 10;
  if (downkey == true) righty = righty + 10;
  
   //moving
   ballx = ballx + vx;
   bally = bally + vy;
   
  //bouncing
  if (ballx < balld/2 || ballx > width - balld/2) {
    vx = vx * -1;
  }

  if (bally < balld/2 || bally > height - balld/2) {
    vy = vy * -1;

}
  }


void gameClicks() {
  
}
