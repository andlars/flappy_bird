class Pipe {
  float x; // Rørets position
  float dx; // Rørets hastighed
  float w; // Rørets bredde
  float y; // Hullets øvre position
  float h; // Hullets størrelse

  // Constructor til nye pipes
  Pipe() {
    x = width;
    dx = 0;
    w = 30;
    y = random(40, 450);
    h = 150;
  }
  

  // Afbild røret på canvasset
  void render() {
    fill(255);
    rect(x, 0, w, y);
    rect(x, y+h, w, height-y-h);
  }

  // Opdater rørets position
  void update() {
    if(frameRate >= 0) {
    x = x - 2;
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
