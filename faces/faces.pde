// setup runs once
void setup() {
  size(800,800);
  background(200);
  frameRate(1);
}

//draw runs on a loop
void draw() {
  background(200);
  strokeWeight(4);
  // renders the head
  fill(random(180,240),random(190,220),103);
  ellipse(width/2,height/2,random(width*0.5,width*0.8),random(height*0.6,height*0.8));
  
  // render the eyes
  fill(255);
  ellipse(width*0.6,height*0.3,random(80,100),random(80,120)); //right eye
  ellipse(width*0.4,height*0.3,random(80,100),random(80,120)); //left eye
  
  // render the nose
  line(width*random(0.4,0.5),height*0.5,width*0.4,height*0.6);
  line(width*0.5,height*0.5,width*0.4,height*0.6);
}
