void game() {
  //table
  background(#2964AF);
  strokeWeight(5);
  stroke(255);
  line(width/2, 0, width/2, 1000);

  textSize(40);
  text("Score: " + score2, 200, 50);
  text("Score: " + score, 800, 50);

  //paddles
  noStroke();
  fill(255, 0, 0);
  circle(leftx, lefty, leftd);
  fill(0);
  circle(rightx, righty, rightd);

  //ball
  fill(#F5A42A);
  circle(ballx, bally, balld);

  if (wkey == true) lefty = lefty - 25;
  if (skey == true) lefty = lefty + 25;
  
  if (AI == false) {
  if (upkey == true) righty = righty - 25;
  if (downkey == true) righty = righty + 25;
  } else {
    righty = bally; }
    
  //moving
  if (timer > 0) {
    timer--;
  } else {
    ballx = ballx + vx;
    bally = bally + vy;
  }

  // left paddle collison
  if (dist(ballx, bally, leftx, lefty) < balld/2 + leftd/2) {

    vx = (ballx - leftx)/5;
    vy = (bally - lefty)/5;
  }

  // right paddle colliso
  if (dist(ballx, bally, rightx, righty) < balld/2 + rightd/2) {

    vx = (ballx - rightx)/5;
    vy = (bally - righty)/5;
  }

  //bouncing
  if (ballx < 0) {
    score = score + 1;

    ballx = width/2;
    bally = height/2;
    vx = 17;
    vy = 0;
    timer = 100;
  }


  if (ballx > width) {
    score2 = score2 + 1;
    ballx = width/2;
    bally = height/2;
    vx = -17;
    vy = 0;
    timer = 100;
  }
  // top
  if (bally < balld/2) {
    bally = balld/2;
    vy = abs(vy);
  }

  // bottom
  if (bally > height - balld/2) {
    bally = height - balld/2;
    vy = -abs(vy);
  }
  
  if (score == 7) {
    mode = gameover; }
    
  if (score2 == 7) {
    mode = gameover2; }
}


void gameClicks() {
}
