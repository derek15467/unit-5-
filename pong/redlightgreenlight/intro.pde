void intro() {
  background(167);
  fill(#C10433);
  textSize(70);
  text("Red Light,", 457, 300);
  fill(#157C42);
  text("Green Light", 784, 300);
  
  
  //tactile
  if(mouseX > 585 && mouseX < 665 && mouseY > 450 && mouseY < 630) {
    stroke(210); } else { stroke(#374151); }
    
  //traffic light button   
  fill(#1F2937); 
  strokeWeight(4);
  rect(585, 450, 80, 180, 20); 
  
  noStroke();
  fill(#EF4444); 
  circle(width/2, 485, 40);
  
  fill(#F59E0B); 
  circle(width/2, 540, 40);
  
  fill(#10B981); 
  circle(width/2, 595, 40);
  
  
}

void introClicks() {
  if(mouseX > 585 && mouseX < 665 && mouseY > 450 && mouseY < 630) {
    mode = game; }
}
