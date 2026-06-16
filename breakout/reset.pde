void reset() {
  score = 0;
  lives = 3;
  
  paddlex = width/2;
  paddley = height;
  ballx = width/2;
  bally = 500;
  vx = 0;
  vy = 10;
  akey = dkey = false;
  

  tempx = 125;
  tempy = 100;
  
  int i = 0;
  while (i < n) {
    x[i] = tempx;
    y[i] = tempy;
    alive[i] = true; 
    
    tempx = tempx + 150;
    if (tempx > 875) {
      tempx = 125;
      tempy = tempy + 100; 
    }
    i = i + 1; 
  }
}
