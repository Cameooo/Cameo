PFont brightBeauty;
PImage imaging;
PImage currentImage;
PImage img;
PImage pencils;
PImage pencilStroke;
PImage penStroke;
PImage paint;
PImage watercolour;
float transparency = 255;
float nextMouseX;
float nextMouseY;
float prevMouseX;
float prevMouseY;
Boolean draw = false;
int lineWeight;
color currentColor;
Erase eraser;
Brush brush;
Pen pen;
Pencil pencil;
Save save;
Clear clear;
Colour colour0;
Colour colour1;
Colour colour2;
Colour colour3;
Colour colour4;
Colour colour5;
Colour colour6;
Colour colour7;
Colour colour8;
Colour colour9;
Colour colour10;
Colour colour11;
Colour colour12;
Colour colour13;
Colour colour14;
Colour colour15;
Colour colour16;
Colour colour17;
Colour colour18;
Colour colour19;


void setup() {
  size(800, 600);
  lineWeight = 20;
  img = loadImage("Welcome.jpg");
  pencilStroke = loadImage("PencilStroke.png");
  penStroke = loadImage("PenStroke.png");
  brightBeauty = createFont("Bright beauty.ttf", 40);

  colour0 = new Colour(0, 550, color(255)); //white
  colour1 = new Colour(40, 550, color(0)); //black
  colour2 = new Colour(80, 550, color(46, 11, 11)); //brown
  colour3 = new Colour(120, 550, color(120, 10, 10)); //dark red
  colour4 = new Colour(160, 550, color(255, 0, 0)); //red
  colour5 = new Colour(200, 550, color(250, 71, 74)); //light red
  colour6 = new Colour(240, 550, color(245, 59, 255)); //pinkish
  colour7 = new Colour(280, 550, color(232, 0, 245)); //pink
  colour8 = new Colour(320, 550, color(129, 3, 137)); //purple
  colour9 = new Colour(360, 550, color(55, 55, 250)); //light blue
  colour10 = new Colour(400, 550, color(0, 0, 255)); //blue
  colour11 = new Colour(440, 550, color(0, 0, 150)); //dark blue
  colour12 = new Colour(480, 550, color(95, 247, 101)); //light green
  colour13 = new Colour(520, 550, color(0, 247, 10)); //lime green
  colour14 = new Colour(560, 550, color(0, 103, 4)); //dark green
  colour15 = new Colour(600, 550, color(58, 103, 0)); //yellow green
  colour16 = new Colour(640, 550, color(255, 255, 0)); //yellow
  colour17 = new Colour(680, 550, color(255, 100, 0)); //orange
  colour18 = new Colour(720, 550, color(155)); //grey
  colour19 = new Colour(760, 550, color(55)); //greyer

  eraser = new Erase();
  brush = new Brush();
  pen = new Pen();
  pencil = new Pencil();
  save = new Save();
  clear = new Clear();
}

void draw() {

  if (transparency > 200) {
    transparency -= 5;
    background(#FCECD8);
  }
  if (transparency <= 200 && transparency > 0) {
    transparency -= 10;
    background(#FCECD8);
  }
  tint(255, transparency);
  image(img, 0, 0, 800, 600);

  if (transparency <= 0) {
    
    colour0.update();
    colour1.update();
    colour2.update();
    colour3.update();
    colour4.update();
    colour5.update();
    colour6.update();
    colour7.update();
    colour8.update();
    colour9.update();
    colour10.update();
    colour11.update();
    colour12.update();
    colour13.update();
    colour14.update();
    colour15.update();
    colour16.update();
    colour17.update();
    colour18.update();
    colour19.update();
    colour0.display();
    colour1.display();
    colour2.display();
    colour3.display();
    colour4.display();
    colour5.display();
    colour6.display();
    colour7.display();
    colour8.display();
    colour9.display();
    colour10.display();
    colour11.display();
    colour12.display();
    colour13.display();
    colour14.display();
    colour15.display();
    colour16.display();
    colour17.display();
    colour18.display();
    colour19.display();
    eraser.update();
    eraser.display();
    pen.update();
    pen.display();
    pencil.update();
    pencil.display();
    save.update();
    save.display();
    clear.update();
    clear.display();

    if (colour1.clicked == true) {
      brush.setColor(color(0));
      currentColor = color(0);
    }

    if (colour2.clicked == true) {
      brush.setColor(color(46, 11, 11));
      currentColor = color(46, 11, 11);
    }

    if (colour3.clicked == true) {
      brush.setColor(color(120, 10, 10));
      currentColor = color(120, 10, 10);
    }

    if (colour4.clicked == true) {
      brush.setColor(color(255, 0, 0));
      currentColor = color(255, 0, 0);
    }

    if (colour5.clicked == true) {
      brush.setColor(color(250, 71, 74));
      currentColor = color(250, 71, 74);
    }

    if (colour6.clicked == true) {
      brush.setColor(color(245, 59, 255));
      currentColor = color(245, 59, 255);
    }

    if (colour7.clicked == true) {
      brush.setColor(color(232, 0, 245));
      currentColor = color(232, 0, 245);
    }

    if (colour8.clicked == true) {
      brush.setColor(color(129, 3, 137));
      currentColor = color(129, 3, 137);
    }

    if (colour9.clicked == true) {
      brush.setColor(color(55, 55, 250));
      currentColor = color(55, 55, 250);
    }

    if (colour10.clicked == true) {
      brush.setColor(color(0, 0, 255));
      currentColor = color(0, 0, 255);
    }

    if (colour11.clicked == true) {
      brush.setColor(color(0, 0, 150));
      currentColor = color(0, 0, 150);
    }

    if (colour12.clicked == true) {
      brush.setColor(color(95, 247, 101));
      currentColor = color(95, 247, 101);
    }

    if (colour13.clicked == true) {
      brush.setColor(color(0, 247, 10));
      currentColor = color(0, 247, 10);
    }

    if (colour14.clicked == true) {
      brush.setColor(color(0, 103, 4));
      currentColor = color(0, 103, 4);
    }

    if (colour15.clicked == true) {
      brush.setColor(color(58, 103, 0));
      currentColor = color(58, 103, 0);
    }

    if (colour16.clicked == true) {
      brush.setColor(color(255, 255, 0));
      currentColor = color(255, 255, 0);
    }

    if (colour17.clicked == true) {
      brush.setColor(color(255, 100, 0));
      currentColor = color(255, 100, 0);
    }

    if (colour18.clicked == true) {
      brush.setColor(color(155));
      currentColor = color(155);
    }

    if (colour19.clicked == true) {
      brush.setColor(color(55));
      currentColor = color(55);
    }
    
    if (colour0.clicked == true) {
      brush.setColor(color(255));
      currentColor = color(255);
    }

    if (eraser.clicked == true) {
      brush.setColor(color(#FCECD8));
      currentColor = color(#FCECD8);
    }
    
    if (pen.clicked == true) {
      brush.setImage(penStroke);
      currentImage = penStroke;
    }
    
    if (pencil.clicked == true) {
      currentImage = pencilStroke;
    }
    
    if (save.clicked == true) {
      saveFrame("Saved-###.jpg");
    }

    if (clear.clicked == true) {
      background(#FCECD8);
    }
    
    if (mouseX < 100 || mouseY > 550) {
      draw = false;
    } 

    brush.paint();
    
    textFont(brightBeauty);
    String LineWeight = "Line Weight = " + lineWeight;
    text(LineWeight, 25, 50);
  }
}

void mousePressed() {
  prevMouseX = mouseX;
  prevMouseY = mouseY;
}

void mouseDragged() {
  draw = true;
}

void keyPressed(){
  if(key == 's'){
    saveFrame("Saved-###.jpg");
  } else if (key == 'c'){
    background(#FCECD8);
  } else if(key == '-'){
    lineWeight = lineWeight - 2;
    noStroke();
    fill(#FCECD8);
    rect(0, 0, 300, 100);
  } else if(key == '='){
    lineWeight = lineWeight + 2;
    noStroke();
    fill(#FCECD8);
    rect(0, 0, 300, 100);
  }
}
