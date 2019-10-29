
Bird b;
Pipe p;
Pipe p2;
PImage base, redbird, bgnight, greenpipe, greenpipe2;
int x1, x2, x3, y;

void setup() {
  size(500, 800);
  frameRate(60);

  noStroke();
  base = loadImage("base.png");
  redbird = loadImage("redbird-midflap.png");
  bgnight = loadImage("background-night.png");
  greenpipe = loadImage("pipe-green.png");
  greenpipe.resize(90, 400);
  greenpipe2 = loadImage("pipe-green2.png");
  greenpipe2.resize(90, 400);
  b = new Bird();
  p = new Pipe(width+100);
  p2 = new Pipe(width+360);
  y=height-112/2;
  x1= 0;
  x2= x1 + 336;
  x3= x2 + 336;
}

void draw() {
  image(bgnight, 0, 0, width, height);

  b.render();
  b.update();
  p.render();
  p.update();
  p2.render();
  p2.update();
  image(base, 0, height-112/2, 336, 112);
  image(base, 336, height-112/2, 336, 112);
  

  imageMode(CORNER);
  x1=x1-2;
  x2=x2-2;
  x3=x3-2;
  image(base, x1, y);
  image(base, x2, y);
  image(base, x3, y);
  
  if(x1 <= -336) {
  x1 = x3 + 336;
  } if (x2 <=-336) {
  x2 = x1 + 336;
  } if (x3 <= -336) {
  x3 = x2 + 336;
  }
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
