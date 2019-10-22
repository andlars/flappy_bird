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
