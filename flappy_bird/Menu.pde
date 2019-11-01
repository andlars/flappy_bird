PImage restart;
PImage restart_mork;
void Menu () {
  if (GameOver==true) {
    p.dx = p.dx + 2;
    image(restart, width/2, height/2);
    if (mouseX>=width/2-85 && mouseX<=width/2+85) {
      if (mouseY >= height/2-30 && mouseY<=height/2+30) {
        image(restart_mork, width/2, height/2);
        if (mousePressed==true) {
          setup();
          Pipes.clear();
          frameCount=0;
        }
      }
    }
  }
}
