class Laser {
  int x, y, speed, r;
  color c;
  int damage;

  //Constructor
  Laser(int x, int y) {
    this.x = x;                 
    this.y = y;
    speed = 12;
    r = 2+1/2;
    c = color(#43FAFF);
  }

  //Fire method
  void fire() {
    y-=speed;
  }
  //reached Top
  boolean reachedTop() {
    if (y<-50) {
      return true;
    } else {
      return false;
    }
  }
  // Display Method
  void display() {
    fill(c);
    rect(x-5.5,y-25,r,13);
    fill(#FF43DD);
    rect(x+5.5,y-25,r,13);
  }
}
