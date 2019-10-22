Bird b;
Pipe p;

void setup() {
  size(500, 800);
  noStroke();

  b = new Bird();
  p = new Pipe();
}

void draw() {
  background(0);
  b.render();
  b.update();
  p.render();
  p.update();
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
