void options() {
  background(100);

  fill(255);
  textSize(75);
  text("OPTIONS", width/2, 150);

  //color options
  fill(255, 0, 0);
  rect(200, 300, 150, 150);

  fill(0, 255, 0);
  rect(425, 300, 150, 150);

  fill(0, 0, 255);
  rect(650, 300, 150, 150);

  //size slider
  stroke(255);
  line(250, 650, 750, 650);

  fill(255);
  circle(sliderX, 650, 30);

  targetSize = map(sliderX, 250, 750, 50, 250);


  fill(targetColor);
  circle(200, 800, targetSize);
  
  //backbutton
  fill(#8921C1);
  rect(650, 800, 150, 100);
  textSize(30);
  fill(255);
  text("BACK", 725, 850); 
}



void optionsClicks() {
  

  // red
  if (mouseX > 200 && mouseX < 350 &&
      mouseY > 300 && mouseY < 450) {

    targetColor = color(255, 0, 0);
  }

  // green
  if (mouseX > 425 && mouseX < 575 &&
      mouseY > 300 && mouseY < 450) {

    targetColor = color(0, 255, 0);
  }

  // blue
  if (mouseX > 650 && mouseX < 800 &&
      mouseY > 300 && mouseY < 450) {

    targetColor = color(0, 0, 255);
  }

  
  if (mouseX > 650 && mouseX < 800 && mouseY > 800 && mouseY < 900) {
    mode = intro; }
  
}
