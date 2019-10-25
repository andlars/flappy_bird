
class Pipe {
  float x; // Rørets position
  float dx; // Rørets hastighed
  float w; // Rørets bredde
  float y; // Hullets øvre position
  float h; // Hullets størrelse

  // Constructor til nye pipes
  Pipe(int X) {
    x = X;
    dx = -2;
    w = 30;
    y = height/2-75;
    h = 150;
  }

  // Afbild røret på canvasset
  void render() {
    fill(255, 0, 0, 0);
    rect(x, 0, w, y);
    fill(255, 0, 0, 0);
    rect(x, y+h, w, height-y-h);
    imageMode(CORNER);
    image(greenpipe, x, y+h);
    image(greenpipe2, x, 0);
  }

  // Opdater rørets position
  void update() {
    x+= dx;
    if (outOfCanvas() == true) {
      x = width;
      y = random(200, 575);
    }
  }

  // Metode, der tjekker om røret er
  // blevet ramt af en fugl. Input skal være
  // et fugle-objekt og metoden skal returnere
  // true eller false alt efter om fuglen er 
  // ramt eller ej.
  boolean hit(Bird b) {
    return false;
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
