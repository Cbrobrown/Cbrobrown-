class Spaceship{
  // Member variables
  int x,y,w,h;
  public float health;
  //color c;
  PImage ship;
  
  // Constructor
  Spaceship(int x, int y) {
    w = 20;
    h = 20;
    this.x = x;
    this.y = y;
    ship = loadImage("Spaceshipart.png");
    //c = color(255,0,0);
  }  
  //Display
  void display(int tempX, int tempY) {
    imageMode(CENTER);
    x = tempX;
    y = tempY;
    image(ship,x,y);
  }
  //Pgun fire
  
  //Sgun fire
}
