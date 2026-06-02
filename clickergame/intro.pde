void intro() {
  background(255);
  
   
      
  //start game button
  strokeWeight(2);
  tactile(300, 600, 400, 100);
  rect(300, 600, 400, 100);
  
  textSize(40);
  fill(0);
  text("START", 500, 650);
  noFill();
  
  // options screen button
  tactile(300, 750, 400, 100);
  rect(300, 750, 400, 100);
  text("OPTIONS", 500, 800);
  textSize(67); 
  text("CLICKER GAME", 500, 250);
}


void introClicks() {
  if (mouseX > 300 && mouseX < 700 && mouseY > 600 && mouseY < 700) {
  mode = game; }
  
  if (mouseX > 300 && mouseX < 700 && mouseY > 750 && mouseY < 850) {
  mode = options; }
    
}

void tactile(int x, int y, int w, int h) {
  
  if (mouseX > x && mouseX < x + w &&
      mouseY > y && mouseY < y + h) {
    stroke(200); // hover color
  } else {
    stroke(0);   // normal color
  }
}
