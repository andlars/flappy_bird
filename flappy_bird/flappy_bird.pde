Bird b;
Pipe p;
Pipe p2;
PImage bg, base;
int y;
boolean jump;

void setup() {
  size(500, 800);
  noStroke();
  bg = loadImage ("background-day.png");
  base = loadImage ("base.png");
  b = new Bird();
  p = new Pipe(width+100);
  p2 = new Pipe(width+370);
   jump = true;
}

void draw() {
  image(bg,0,0, width, height);
  base = loadImage ("base.png");
  b.render();
  b.update();
  p.render();
  p2.render();
  p.update();
  p2.update();
  
 if (b.x + b.s/2 > p.x && b.x - b.s/2 < p.x + p.w && (b.y + b.s/2 < p.y || b.y - b.s/2 > p.y + p.h)) {
   p.dx = 0;
   p2.dx = 0;
   jump = false;
 }
 if (b.x + b.s/2 > p2.x && b.x - b.s/2 < p2.x + p2.w && (b.y + b.s/2 < p2.y || b.y - b.s/2 > p2.y + p2.h)) {
   p.dx = 0;
   p2.dx = 0;
   jump = false;
 }
 if ((b.y - b.s/2 < p.y || b.y + b.s/2 > p.y + p.h) && (b.x + b.s/2 > p.x && b.x - b.s/2 < p.x + p.w)) {
   p.dx = 0;
   p2.dx = 0;
   jump = false;
 }
 
 if (b.y + b.s/2 >= height) {
   p.dx = 0;
   p2.dx = 0;
   jump = false;
 }
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
