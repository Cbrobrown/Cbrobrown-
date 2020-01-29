class Star {
  int x,y,r,speed;
  
  // Constructor
  Star(int x,int y) {
    this.x = x;
    this.y = y;
    r = int(random(1,5));
    speed = int(random(1,8));
  }
  // display
  void display(){
    noStroke();
    fill(255);
    ellipse(x,y,r,r);
  }
  // move
  void move() {
    y+=speed;
  }
  // reached bottom
    boolean reachedBottom() {
    if (y>height+50) {
      return true;
    } else {
      return false;
    }
  } 
}
