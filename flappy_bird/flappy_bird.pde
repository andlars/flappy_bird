Bird b;
Pipe p;
Pipe p2;
PImage bg, base;
int y;

void setup() {
  size(500, 800);
  noStroke();
  bg = loadImage ("background-day.png");
  base = loadImage ("base.png");
  

  b = new Bird();
  p = new Pipe(width+100);
  p2 = new Pipe(width+370);
}

void draw() {
  image(bg,0,0, width, height);
  base = loadImage ("base.png");
  
  b.render();
  b.update();
  p.render();
  p.update();
  p2.render();
  p2.update();
}

void keyPressed() {
  if (key == ' ') {
    b.dy = 0;
    b.flap();
  }
}

void keyReleased() {
  if (!b.ready2flap) {
    b.ready2flap = true;
  }
}
