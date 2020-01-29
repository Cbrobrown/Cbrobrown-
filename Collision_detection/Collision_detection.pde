int xspeed, yspeed;
int xpos, ypos, wdth, ht;
void setup(){
  size(displayWidth,displayHeight); //2 displayWidth,displayHeight
  background(0);
  xspeed = 3; //3,4
  yspeed = 5;
  wdth = 20; //1
  ht = 20; //2
  noStroke();
  xpos = width/2;
  ypos = height/2;
  frameRate(60); //3
}
void draw(){
  //background(0); //5
  fill(255); //6
  ellipse(ypos, xpos, wdth, ht); //<>//
  ellipse(xpos, ypos, wdth, ht);
  xpos += xspeed;
  ypos += yspeed;
  if (xpos >= width-wdth/2 || xpos <= wdth/2){
    xspeed *= -1;
  }
    if (ypos >= height-ht/2 || ypos <= ht/2){
    yspeed = yspeed * -1;
    }
}
