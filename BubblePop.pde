Background bg;
Mouselight light;

int s = 10;

void setup() {
  size(800,800);
  rectMode(CENTER);
  noStroke();
  noCursor();
  bg = new Background(s);
  light = new Mouselight(s);
}

void draw() {
  bg.display();
  light.display();
}
