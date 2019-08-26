class Erase {
  PImage img;
  int previousColor;
  color c = color(0);
  color c2 = color(#FCECD8);
  Boolean clicked = false;

  Erase() {
    img = loadImage("Eraser.png");
    previousColor = c;
  }

  void update() {
    if (mousePressed) {
      if ((mouseX > 25) && (mouseX < 75) && (mouseY > 250) && (mouseY < 300)) {
        clicked = true;
        c = c2;
      }
    } else {
      c = previousColor;
      clicked = false;
    }
  }


  void display() {
    tint(c);
    image(img, 25, 250, 50, 50);
  }
}
