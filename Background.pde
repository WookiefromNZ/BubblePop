class Background {

  int s;
  
  Background(int tempS) {
    s = tempS;
  }
  
  void display() {
    for (int x = 0; x < width + s; x = x + s) {
      for (int y = 0 ; y <height + s; y = y + s) {
        fill(random(20), random(191), random(230), 127);
        rect(x, y, s, s);
      }
    }
  }
}
