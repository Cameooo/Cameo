class Brush {
  color c = color(255, 0, 0);

  void paint() {
    if (draw == true) {
      currentImage = pencilStroke;
      tint(currentColor);
      image(currentImage, mouseX, mouseY, lineWeight, lineWeight);
      float nextMouseX = mouseX;
      float nextMouseY = mouseY;  
      int numFill = 100;
      float destX = nextMouseX - prevMouseX;
      float destY = nextMouseY - prevMouseY;
      for (int i = 0; i < numFill; i++) {
        image(currentImage, prevMouseX + (destX/numFill) * i, prevMouseY + (destY/numFill) * i, lineWeight, lineWeight);
      }
      
      prevMouseX = nextMouseX;
      prevMouseY = nextMouseY;
      draw = false;
    }
  }

  void setColor(color col) {
    c = col;
  }
  
  void setImage(PImage imaging){
    currentImage = imaging;
  }
}
