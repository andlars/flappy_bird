
Bird b;
Pipe p;
Pipe p2;
PImage base, redbird;

void setup() {
  size(500, 800);
  noStroke();
  base = loadImage("base.png");
  redbird = loadImage("redbird-midflap.png");
  b = new Bird();
  p = new Pipe(width+100);
  p2 = new Pipe(width+360);
  }

void draw() {
  background(0);
  b.render();
  b.update();
  p.render();
  p.update();
  p2.render();
  p2.update();
  
  
 
  
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

Bird b;
Pipe p;
PImage base, redbird, bgnight;

void setup() {
  size(288, 512);
  noStroke();
  base = loadImage("base.png");
  redbird = loadImage("redbird-midflap.png");
  bgnight = loadImage("background-night.png");
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
