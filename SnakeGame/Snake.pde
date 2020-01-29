class Snake {
  // Member Variable
  color c;
  float xpos;
  float ypos;
  float xspeed;
  float yspeed;
  
  // Constructor
  Snake(color c,float xpos,float ypos,float xspeed,float yspeed) {
    this.c = c;
    this.xpos = xpos;
    this.ypos = ypos;
    this.xspeed = xspeed;
    this.yspeed = yspeed;
  }
  // Display Method
  void display() {
    rectMode(CENTER);
    fill(220);
    rect(xpos,ypos,20,20);
  }
}
