Bird b;
Pipe p;
PImage base, redbird, bgnight, greenpipe, greenpipe2;

void setup() {

  size(500, 800);
  frameRate(60);
  noStroke();
  base = loadImage("base.png");
  redbird = loadImage("redbird-midflap.png");
  bgnight = loadImage("background-night.png");
  greenpipe = loadImage("pipe-green.png");
  greenpipe2 = loadImage("pipe-green2.png");
  b = new Bird();
  p = new Pipe();
}

void draw() {
  image(bgnight, 0, 0, width, height);
  image(base, 0, height-112/2, 336, 112);
  image(base, 336, height-112/2, 336, 112);
  b.render();
  b.update();
  p.render();

  imageMode(CORNER);
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
