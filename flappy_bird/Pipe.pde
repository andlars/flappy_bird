class Pipe {
  float x; // Rørets position
  float dx; // Rørets hastighed
  float w; // Rørets bredde
  float y; // Hullets øvre position
  float h; // Hullets størrelse
  PImage[] PipeArray = new PImage[2];
  PImage[] PipeArrayUp = new PImage[2];
  int pipecolor;
  PImage pipegreen, pipered, pipegreenFlip, piperedFlip;
  boolean withPoint;
  
  
  // Constructor til nye pipes
  Pipe(int X) {
    x = X;
    dx = -2.01;
    w = 50;
    y = int(random(150, 650));
    h = 150;
    withPoint = true;
    
    pipegreen = loadImage("pipe-green.png");
    pipered = loadImage("pipe-red.png");
    pipegreenFlip = loadImage("pipe-green-mirror.png");
    piperedFlip = loadImage("pipe-red-mirror.png");
  }

  // Afbild røret på canvasset
  void render() {
    fill(255);
    rect(x, 0, w, y);
    rect(x, y+h, w, height-y-h);
  }

  // Opdater rørets position
  void update() {
    x += dx;
    if (outOfCanvas() == true) {
      x = width;
      y = random(150, 650); 
      withPoint = true;
      pipecolor = (int)random(2);
    }
    
    // Pipes random color
    for (int i=0; i<PipeArray.length; i++){
      PipeArray [0] = pipegreen;
      PipeArray [1] = pipered;
    }
    image(PipeArray [pipecolor], x-5, y+150, w+10, height-y-h);

    for (int i=0; i<PipeArrayUp.length; i++){
      PipeArrayUp [0] = pipegreenFlip;
      PipeArrayUp [1] = piperedFlip;
    image(PipeArrayUp [pipecolor], x-5, 0, w+10, y+2);
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
    if (x+w < 0) {
      return true;
    } else {
      return false;
    }
  }
}
