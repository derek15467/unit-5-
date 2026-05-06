void intro() {
  background(255);
  
    if (mouseX > 300 && mouseX < 700 && mouseY > 600 && mouseY < 700) {
    stroke(200); }
    else {
      stroke(0); }
      
  strokeWeight(2);
  rect(300, 600, 400, 100);
  
  textSize(40);
  fill(0);
  text("START", 500, 650);
  noFill();
      
}


void introClicks() {
  if (mouseX > 300 && mouseX < 700 && mouseY > 600 && mouseY < 700) {
  mode = game; }
  
    
}
