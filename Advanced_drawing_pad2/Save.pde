class Save {
  PImage img;
  int previousColor;
  color c = color(0);
  color c2 = color(255);
  Boolean clicked = false;

  Save() {
    img = loadImage("Save.png");
    previousColor = c;
  }

  void update() {
    if (mousePressed) {
      if ((mouseX > 25) && (mouseX < 75) && (mouseY > 100) && (mouseY < 125)) {
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
    image(img, 25, 100, 50, 25);
  }
}
