class Rock {
  //Member Variables
  int x, y, w, h, speed;
  float health;
  PImage rock;
  int rand;

  //Constructor
  Rock(int x, int y) {
    this.x = x;
    this.y = y;
    w = 100;
    h = 100;
    speed = int(random(2, 7));
    health = 100;
    rand = int(random(1, 8));
    if (rand == 1) {
      rock = loadImage("Rock.png");
    } else if (rand == 2) {
      rock = loadImage("Rock2.png");
    } else if (rand == 3) {
      rock = loadImage("Rock2.png");
    } else if (rand == 4) {
      rock = loadImage("Rock2.png");
    } else if (rand == 5) {
      rock = loadImage("Rock3.png");
    } else if (rand == 6) {
      rock = loadImage("Rock3.png");
    } else if (rand == 7) {
      rock = loadImage("Rock3.png");
    }
  }
  void display() {
    imageMode(CENTER);
    image(rock, x, y);
  }
  void move() {
    y+=speed;
  }

  boolean reachedBottom() {
    if (y>height+50) {
      return true;
    } else {
      return false;
    }
  }
}
