//this is an exercise for us to fool around, possibly,
//according to my unserstanding to the requirement of
//exercise 1.

//This code draws lines with rapidly changing colors. The lines start from the center of background.

float x1, y1, x2, y2;
int R, G, B;
color a, b;

void setup() {
  size(1280, 720);
  background(155);
  noStroke(); //disables drawing outline
  //reset();
}

void draw() {
  a = color(random(R, 255), random(G, 255), random(B, 255));
  b = color(random(R, 255), random(G, 255), random(B, 255));

  gradientLine(mouseX, mouseY, width/2, height/2, a, b);
}

//void mousePressed() {
//  //reset();
//}

//code found on https://forum.processing.org/two/discussion/5620/how-to-draw-a-gradient-colored-line
void gradientLine(float x1, float y1, float x2, float y2, color a, color b) {
  float deltaX = x2-x1;
  float deltaY = y2-y1;
  float tStep = 1.0/dist(x1, y1, x2, y2);
  for (float t = 0.0; t < 1.0; t += tStep) {
    fill(lerpColor(a, b, t));
    ellipse(x1+t*deltaX, y1+t*deltaY, 3, 3);
  }
}

//void reset() {
//  x1 = random(width);
//  y1 = random(height);
//  x2 = random(width);
//  y2 = random(height);
//}
