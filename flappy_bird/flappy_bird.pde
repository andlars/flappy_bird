Bird b;
Pipe p;
PImage base, redbird;

void setup() {
  size(500, 800);
  noStroke();
  base = loadImage("base.png");
  redbird = loadImage("redbird-midflap.png");
  b = new Bird();
  p = new Pipe();
  
}

void draw() {
  background(0);
  b.render();
  b.update();
  p.render();
  image(base, 0, height-112/2, 336, 112);
  image(base, 336, height-112/2, 336, 112);
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
