void game() {
  background(#5D0C13);
  fill(255);
  noStroke();

  // paddle and ball
  circle(paddlex, paddley, paddled);
  circle(ballx, bally, balld);

  // ball movement
  ballx = ballx + vx;
  bally = bally + vy;

  // ball collison
  if (ballx - balld/2 < 0 || ballx + balld/2 > width) {
    vx = -vx;
  }
  if (bally - balld/2 < 0) {
    vy = -vy;
  }

  float d = dist(ballx, bally, paddlex, paddley);

  if (d <= balld/2 + paddled/2) {
    vy = -vy;

    vx = (ballx - paddlex) * 0.15;
  }

  //bricks
  int i = 0;
  while (i < n) {
    if (alive[i] == true) {
      manageBrick(i);
    }
    i++;
  }


  // Score
  textSize(30);
  fill(255); //
  text("Score: " + score, 100, 700);
  text("Lives: " + lives, 100, 750);

  // ball reset
  if (bally > 1000) {
    lives = lives - 1;
    ballx = width/2;
    bally = 500;
    vx = 0;
    vy = 10;
  }
  //score and lives
  if (lives == 0) {
    mode = lose;
  }

  if (score == 24) {
    mode = win;
  }

  // Paddle movement
  if (akey == true) paddlex = paddlex - 10;
  if (dkey == true) paddlex = paddlex + 10;

  if (paddlex < paddled/2) paddlex = paddled/2;
  if (paddlex > width - paddled/2) paddlex = width - paddled/2;
}
void gameClicks() {
}

void manageBrick(int i) {
  if (y[i] == 100) fill(#7A02D1);
  if (y[i] == 200) fill(#EA112A);
  if (y[i] == 300) fill(#E56909);
  if (y[i] == 400) fill(#E5A709);

  circle(x[i], y[i], 50);

  if (dist(ballx, bally, x[i], y[i]) < balld/2 + 50/2) {
    vx = (ballx - x[i])/3.5;
    vy = (bally - y[i])/3.5;
    alive[i] = false;
    score = score + 1;
  }
}
