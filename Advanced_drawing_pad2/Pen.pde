class Pen {
  PImage img;
  int previousColor;
  color c = color(0);
  color c2 = color(255);
  Boolean clicked = false;

  Pen() {
    img = loadImage("Pen.png");
    previousColor = c;
  }

  void update() {
    if (mousePressed) {
      if ((mouseX > 25) && (mouseX < 75) && (mouseY > 350) && (mouseY < 400)) {
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
    image(img, 25, 350, 50, 50);
  }
}
