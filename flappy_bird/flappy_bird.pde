Bird b;
Pipe p;
PImage img;

void setup() {
  size(500, 800);
  noStroke();
  img = loadImage("baggrund flappy.png");

  b = new Bird();
  p = new Pipe();
}

void draw() {
  image(img,0,0);
  b.render();
  b.update();
  p.render();
}

void keyPressed() {
  if (key == ' ') {
    b.flap();
  }
}

void keyReleased() {
  if (!b.ready2flap) {
    b.ready2flap = true;
  }
}
