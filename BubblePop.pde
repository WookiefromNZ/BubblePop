Background bg;

int s = 10;

void setup() {
  size(800,800);
  rectMode(CENTER);
  noStroke();
  noCursor();
  bg = new Background(s);
}

void draw() {
  bg.display();
}
