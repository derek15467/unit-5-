PImage[] gif;
int f;
int numberOfFrames;

void setup() {
  numberOfFrames = 29;
  gif = new PImage[numberOfFrames];

  int i = 0;
  while (i < numberOfFrames) {
    gif[i] = loadImage("frame_" + i + "_delay-0.03s.gif");
    i = i + 1;
  }
}

void draw () {
  image(gif[f], 0, 0, width, height);
  f = f+ 1;
}
