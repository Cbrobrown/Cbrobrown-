int x,y;

void setup() {
  size(800,400);
  x = 0;
  y = 0;
}

void draw() {
  fill(255);
  //drawName();
  //noLoop();
}

void keyPressed() {
  if(key == CODED) {
    if(keyCode == UP) {
      moveUp(1);
    } else if(keyCode == DOWN) {
      moveDown(1);
    } else if(keyCode == LEFT) {
      moveLeft(1);
    } else if(keyCode == RIGHT) {
      moveRight(1);
    }if(keyCode == SHIFT) {
      moveUpleft(1);
    }if(keyCode == CONTROL) {
      moveDownleft(1);
    }if(keyCode == ALT) {
      moveDownright(1);
    }if(keyCode == RETURN) {
      moveUpright(1);
    }
  }
}

void mousePressed() {
  saveFrame("line-######.png");
}

void drawName() {
  moveRight(11);
  moveLeft(4);
  moveDownleft(4);
  moveDown(7);
  moveDownright(4);
  moveRight(6);
  moveUpright(8);
  moveDownright(3);
  moveLeft(6);
  moveRight(6);
  moveDownright(5);
  moveUpright(5);
  moveDownright(2);
  moveUpright(2);
  moveDownright(5);
  moveRight(5);
  moveLeft(5);
  moveUp(5);
  moveRight(5);
  moveLeft(5);
  moveUp(5);
  moveRight(5);
  moveLeft(5);
  moveDown(10);
  moveRight(7);
  moveUp(10);
  moveRight(5);
  moveDown(5);
  moveLeft(5);
  moveDownright(5);
  moveRight(6);
  moveUpleft(3);
  moveUp(4);
  moveUpright(3);
  moveRight(4);
  moveDownright(3);
  moveDown(4);
  moveDownleft(3);
  moveLeft(4);
  moveRight(10);
  moveUp(8);
  moveDownright(8);
  moveUp(8);
}

void moveRight(int rep) {
  for(int i=0;i<rep*10;i++) {
    point(x+i,y);
  }
  x=x+(10*rep);
}

void moveLeft(int rep) {
  for(int i=0;i<rep*10;i++) {
    point(x-i,y);
  }
  x=x-(10*rep);
}

void moveUp(int rep) {
  for(int i=0;i<rep*10;i++) {
    point(x,y-i);
  }
  y=y-(10*rep);
}

void moveDown(int rep) {
  for(int i=0;i<rep*10;i++) {
    point(x,y+i);
  }
  y=y+(10*rep);
}

void moveUpright(int rep) {
  for(int i=0;i<rep*10;i++) {
    point(x+i,y-i);
  }
  x=x+(10*rep);
  y=y-(10*rep);
}

void moveDownright(int rep) {
  for(int i=0;i<rep*10;i++) {
    point(x+i,y+i);
  }
  x=x+(10*rep);
  y=y+(10*rep);
}

void moveUpleft(int rep) {
  for(int i=0;i<rep*10;i++) {
    point(x-i,y-i);
  }
  x=x-(10*rep);
  y=y-(10*rep);
}

void moveDownleft(int rep) {
  for(int i=0;i<rep*10;i++) {
    point(x-i,y+i);
  }
  x=x-(10*rep);
  y=y+(10*rep);
}
