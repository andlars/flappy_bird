class Pipe {
  float x; // Rørets position
  float dx; // Rørets hastighed
  float w; // Rørets bredde
  float y; // Hullets øvre position
  float h; // Hullets størrelse
  PImage ned, op;

  // Constructor til nye pipes
  Pipe() {
    x = width;
    dx = 2;
    w = 52;
    y = random(40, 450);
    h = 200;
    ned = loadImage("sprites/pipe-green-down.png");
    op = loadImage("sprites/pipe-green-up.png");

  }


  // Afbild røret på canvasset
  void render() {
    fill(255, 255, 255, 0);
    rect(x, 0, w, y);
    rect(x, y+h, w, height-y-h);
    imageMode(CENTER);
    image(ned, x+w/2, y - 600/2);
    image(op, x+w/2, y + h + 600/2);
  }

  // Opdater rørets position
  void update() {
      x = x - dx;
  }

  // Metode, der tjekker om røret er
  // blevet ramt af en fugl. Input skal være
  // et fugle-objekt og metoden skal returnere
  // true eller false alt efter om fuglen er 
  // ramt eller ej.
  boolean hit(Bird b) {
    if (x >= 100 && x <= 200) {
      if (b.y <= y || b.y >= y + h) {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  // Metode, der returnerer true, når røret er uden
  // for canvas. Ellers false
  boolean outOfCanvas() {
    if (x < - w) {
      return true;
    } else {
      return false;
    }
  }
}
