class Mouselight {
  float s;

  Mouselight(float tempS) {
    s = tempS / 1.5;
  }

  void display() {
    for (float x= 0; x < width + s; x = x + s) {
      for (float y = 0; y < height + s; y = y + s) {
        if (dist(x, y, mouseX, mouseY) <= s * 3) {
          fill(255, 127);
          rect(x, y, s, s);
        } else if (dist(x, y, mouseX, mouseY) <= s * 7) {
          fill(191, 127);
          rect(x, y, s, s);
        } else if (dist(x, y, mouseX, mouseY) <= s * 9) {
          fill(127, 127);
          rect(x, y, s, s);
        } else if (dist(x, y, mouseX, mouseY) <= s * 10) {
          fill(64, 127);
          rect(x, y, s, s);
        } else if (dist(x, y, mouseX, mouseY) <= s * 11) {
          fill(0, 127);
          rect(x, y, s, s);
        } else {
          // Do nothing
        }
      }
    }
  }
}
