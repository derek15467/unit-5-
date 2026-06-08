void intro() {
  background(#2964AF);
  textSize(100);
  fill(#F5A42A);
  text("Pong!", width/2, 210);
  
  //single player and two player choice
  fill(255);
  rect(600, 670, 200, 100);
  rect(200, 670, 200, 100);
  
  //text for boxes
  fill(0);
  textSize(30);
  text("Two Player", 700, 720);
  text("Single Player", 300, 720);
  fill(255);
}

void introClicks() {
  if (mouseX > 600 && mouseX < 800 && mouseY > 670 && mouseY < 770) {
  mode = game;
  AI = false; }
  
  if (mouseX > 200 && mouseX < 400 && mouseY > 670 && mouseY < 770) {
  mode = game;
  AI = true; }
}
