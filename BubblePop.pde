Background bg;
Mouselight light;

ArrayList <Bubble> bubble;

//Number of starting bubbles
int total = 5;
//Number of bubbles leaving top of screen
int tallyUpSize = 10;
int tallyUp = 0;
//Number of popped bubbles required to remove one
int tallyPoppedSize = 5;
int tallyPopped = 0;

//Size of background and cursor squares
int s = 10;

void setup() {
  size(800,800);
  rectMode(CENTER);
  ellipseMode(CENTER);
  noStroke();
  noCursor();
  bg = new Background(s);
  light = new Mouselight(s);
  bubble = new ArrayList<Bubble>();
  
  for (int i = 0; i < total; i++) {
    bubble.add(new Bubble(random(25,150)));
}

void draw() {
  bg.display();
  light.display();
  
  for (Bubble b : bubble) {
    b.motion();
    b.edge();
    b.render;
    
  //Handles the number of bubbles leaving the top of screen, adding one when tally is full
  if (tallyUp >= tallyUpSize) {
    total = total + 1;
    tallyUp = 0;
    bubble.add(new Bubble(random(25, 150)));
  }
  
  //Handles the number of bubbles being popped, removing one when tally is full
  if (tallyPopped >= tallyPopSize) {
    if (total > 2 {
      total = total - 1;
    }
    tallyPopped = 0;
  }
}

void mousePressed() {
  if (mouseButton == LEFT) {
    for (int i = 0; i < bubble.size(); i++) {
      Bubble b = bubble.get(i);
      b.check();
    }
  }
}

void keyPressed() {
  for (Bubble b : bubble) {
    b.direction();
  }
}
