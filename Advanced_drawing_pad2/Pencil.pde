class Pencil {
  PImage pencils;
  int previousColor;
  color c = color(0);
  color c2 = color(255);
  Boolean clicked = false;

  Pencil() {
    pencils = loadImage("Pencil.png");
    previousColor = c;
  }

  void update() {
    if (mousePressed) {
      if ((mouseX > 25) && (mouseX < 75) && (mouseY > 450) && (mouseY < 500)) {
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
    image(pencils, 25, 450, 50, 50);
  }
}
