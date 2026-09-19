int startX = 0;
int startY = 0;
int endX = 0;
int endY = 0;

int lightningR = 255;
int lightningG = 255;
int lightningB = 255;

void setup() {
  size(800, 600);
  strokeWeight(3);
  background(0);
}

void draw() {
  background(0);
  if (Math.random() < 0.1) {
    stroke(lightningR, lightningG, lightningB);
    for (int i = 0; i < 5; i++) {
      startX = (int)(Math.random() * width);
      startY = 0;
      endX = startX;
      endY = 0;

      while (endY < height) {

        endX = startX + (int)(Math.random() * 19) - 9;
        endY = startY + (int)(Math.random() * 10);

        line(startX, startY, endX, endY);

        startX = endX;
        startY = endY;
      }
    }
  }
}

void mousePressed() {
  lightningR = (int)(Math.random() * 256);
  lightningG = (int)(Math.random() * 256);
  lightningB = (int)(Math.random() * 256);
}
