Bird b;
Pipe p;
PImage img;
ArrayList<Pipe> Pipes = new ArrayList<Pipe>();
int score = 0;
PFont kremlin;
// import processing.sound.*; *LYD*
// SoundFile flaplyd; *LYD*

void setup() {
  size(500, 800);
  noStroke();
  img = loadImage("baggrund flappy.png");
  kremlin = loadFont("data/Kremlin-48.vlw");
  b = new Bird();
  p = new Pipe();


}

void draw() {
  imageMode(CENTER);
  image(img, width/2, height/2);

  b.render();
  b.update();

  for (Pipe p : Pipes) {
    p.render();
    p.update();
  }

  if (frameCount % 175 == 0) {
    Pipes.add(new Pipe());
    if (frameCount % 175 == 0) {
      score = score + 1;
    }
    if (frameCount < 350) {
      score = 0;
    }
  }

  // flaplyd = new SoundFile (this, "flaplyd.mp3"); *LYD*
  // flaplyd = new SoundFile (this, "flaplyd.mp3"); *LYD*

  //Game over når jorden rammes
  if (b.y >= height - b.s/2 || p.hit(b) == true) {
    frameRate(0);
    textAlign(CENTER);
    textSize(50);
    text("GAME OVER", width/2, height/2);
  }

  if (p.hit(b) == true) {
    rect(400, 400, width/2, height/2);
  }
  
  textAlign(CENTER);
  textSize(48);
  textFont(kremlin);
  fill(0);
  text(score, width/2 + 3, 200 + 3);
  fill(255);
  text(score, width/2, 200);
}

void keyPressed() {
  if (key == ' ') {
    b.flap();
    //flaplyd.play(); { *LYD*
    //flaplyd.amp(1); *LYD*
  }
}

void keyReleased() {
  if (!b.ready2flap) {
    b.ready2flap = true;
  }
}
