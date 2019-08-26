class Colour {
  int w = 40;
  int h = 50;
  int x = 0;
  int y = 550;
  int currentColor;
  int previousColor;
  color c = color(255, 0, 255);
  color c2 = color(255, 255, 255);
  Boolean clicked = false;

  Colour(int xpos, int ypos, color col) {
    x = xpos;
    y = ypos;
    c = col;
    previousColor = col;
  }

  void update() {
    if (mousePressed) {
      if ((mouseX > x) && (mouseX < (x+w)) && (mouseY > y) && (mouseY < (y+h))) {
        clicked = true;
        println("clicked");
        c = c2;
      }
    } else {
      clicked = false;
      c = previousColor;
    }
  }

  void display() {
    fill(c);
    rect(x, y, w, h);
    noStroke();
  }
}
