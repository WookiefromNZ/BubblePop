class Bubble {
  PVector loc;
  PVector vel;
  float d;
  float r;
  boolean Up;

  Bubble(float tempD) {
    loc = new PVector(random(r, width - r), height + r);
    vel = new PVector();
    d = tempD;
    r = d/2;
    Up = true;
  }

  void motion() {      
    vel = new PVector(random(-3, 3), random(-10, 0));
    if (Up == false) {
      vel.y = vel.y * -1;
    }
    loc.add(vel);
  }

  void direction() {
    // Swap vertical direction
    Up = !Up;
  }

  void edge() {
    // If the bubble is past the top or bottom of the window, pop or reverse direction.
    if (loc.y < -r) {                           
      tallyUp = tallyUp + 1;
      pop();
    }
    if (loc.y > height) {                            
      direction();
      Up = true;
    }
  }

  void check() {
    // Check mouse pointer is in bubble then pop.
    if (dist(mouseX, mouseY, loc.x, loc.y) <= r) {
      pop();
      tallyPopped = tallyPopped + 1;
      if (bubble.size() > total) {
        bubble.remove(this);
      }
    }
  }

  void pop() {
    // "New" bubble at bottom of screen and set direction to up.
    d = random(float(25), float(150));
    loc.y = height + r;
    loc.x = random(r, width - r);
    if (Up == false) {
      Up = true;
    }
  }

  void render() {
    fill(255, 64);
    ellipse(loc.x, loc.y, d, d);
  }
}
