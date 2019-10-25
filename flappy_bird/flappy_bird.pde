
Bird b;
Pipe p;
Pipe p2;
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
  greenpipe2.resize(90, 310);
  b = new Bird();
  p = new Pipe(width+100);
  p2 = new Pipe(width+360);
}

void draw() {
  image(bgnight, 0, 0, width, height);
  image(base, 0, height-112/2, 336, 112);
  image(base, 336, height-112/2, 336, 112);
  b.render();
  b.update();
  p.render();
  p.update();
  p2.render();
  p2.update();

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
