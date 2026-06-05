void game() {
  background(0);
  fill(targetColor);
  d = targetSize;
  circle(x, y, d);

//pause button
  fill(255);
  stroke(0);
  circle(100, 100, 100);
  textSize(40);
  text("Score: " + score, width/2, 50);
  text("Lives: " + lives, width/2, 100);
  //moving
  x = x + vx;
  y = y + vy;


  //bouncing
  if (x < d/2 || x > width-d/2) {
    vx = vx * -1;
  }

  if (y < d/2 || y > height-d/2) {
    vy = vy * -1;
  }
}
void gameClicks() {
  
    if(dist(mouseX, mouseY, 100, 100) < 50) {
    mode = pause; 
    return; }
    
  if (dist(mouseX, mouseY, x, y) < 75) {
    score = score + 1;
    vx = vx * 1.07;
    vy = vy * 1.07;
  } else {
    lives = lives -1;
  }
  if (lives == 0) {
      if (score > highScore) {
    highScore = score;
  }
    mode = gameover; 
  }
  
  
}
