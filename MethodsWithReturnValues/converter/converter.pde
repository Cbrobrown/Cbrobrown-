void setup(){
  size(400,400);
}

void draw(){
  background(#40AD92);
  text("Miles:" + mouseX + "Km:" + celConverter(mouseX), 80, 250);
  text("Km:" + mouseX + "Miles:" + farConverter(mouseX), 80, 270);
  drawRef();
}

float celConverter(float ml){
  fill(255);
  return ml = ml * 1.609;
}
float farConverter(float km){
  fill(255);
  return km = km /1.609;
}

void drawRef(){
  
  line(0,300,width,300);
  //draw tic marks
  for(int i=0; i< width; i+=25){
    fill(255);
    line(i,295,i,305);
    textAlign(CENTER);
    text(i,i,293);
  }
  fill(255,0,0);
  rect(0,295,mouseX,10);
  
  fill(255);
  textSize(30);
  text("Connor Carpenter", width/2,40);
  textSize(12);
  String s ="Scroll left and right on the number line to see the conversions of Miles and Kilometers.";
  text(s,10,50,390,50);
  text("2019",width/2,100);
}                               
