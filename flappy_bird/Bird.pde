  class Bird {
  float x, y; // Fuglens position
  float dy, ddy; // Fuglens hastighed og acceleration
  float s; // Fuglens størrelse
  boolean ready2flap;
  PImage fugl;
  float rot;

  // Constructor til nye fugle
  Bird() {
    x = 150;
    y = height/2;
    dy = 0;
    ddy = 0.5;
    s = 50;
    ready2flap = true;
    fugl = loadImage("sprites/redbird-downflap.png");
    rot = 0;
  }

  // Afbild fuglen ved dens nuværende position
  void render() {
    fill(255);
    translate(x, y);
    imageMode(CENTER);
    rotate(radians(rot));
    image(fugl, 0, 0);
    fugl.resize(45, 35);
    rotate(TWO_PI - radians(rot));
    translate(-x, -y);
  }

  // Opdater fuglens position
  void update() {
    dy += ddy; 
    y += dy;
        
    if (y >= height-120) {
      y = height-s/2;
      dy = 0;
    }
    
    rot = rot + map(dy , -200, 200, -45, 45);
  }

  // Bask med vingerne
  void flap() {
    if(ready2flap) {
      dy=0;
      dy += -10;
      ready2flap = false;
    } 
  }
}
