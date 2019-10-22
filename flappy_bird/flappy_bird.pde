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
  imageMode(CENTER);
  image(img, width/2, height/2);
  b.render();
  b.update();
  p.render();


  //Game over når jorden rammes
  if (b.y >= height - b.s/2) {
    frameRate(0);
    textAlign(CENTER);
    textSize(40);
    text("GAME OVER", width/2, height/2);
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
