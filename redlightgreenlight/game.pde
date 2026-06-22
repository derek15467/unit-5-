void game() {
  timer = frameCount % 220;

  if (timer < 120) {
    background(#064E3B);
    green = true;
  } else if (timer >= 120 && timer < 135) {
    background(#450A0A);
    green = true;
  } else {
    background(#450A0A);
    green = false;
  }


  if (green == true) {
    textSize(75);
    fill(#177621);
    text("GREEN LIGHT", width/2, 200);
    if (wkey == true) bluex = bluex + 3;
    if (upkey == true) redx = redx + 3;
  } else {
    if (wkey == true) bluex = 67;
    if (upkey == true) redx = 67;
    textSize(75);
    fill(#EA184D);
    text("RED LIGHT", width/2, 200);
  } 

  //draw everything
  noStroke();
  fill(#D61A40);
  circle(redx, redy, redd);
  fill(#3B82F6);
  circle(bluex, bluey, blued);

  stroke(#E3AC15);
  strokeWeight(5);
  line(1100, 0, 1100, 800);

  //keyboard


  //finish line
  if (redx >= 1126) {
    mode = redWins;
  }

  if (bluex >= 1126) {
    mode = blueWins;
  }
}


void gameClicks() {
}
