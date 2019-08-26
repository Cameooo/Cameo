class Clear {
  PImage img;
  int previousColor;
  color c = color(0);
  color c2 = color(255);
  Boolean clicked = false;

  Clear() {
    img = loadImage("Clear.png");
    previousColor = c;
  }

  void update() {
    if (mousePressed) {
      if ((mouseX > 25) && (mouseX < 75) && (mouseY > 150) && (mouseY < 175)) {
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
    image(img, 25, 150, 50, 25);
  }
}
