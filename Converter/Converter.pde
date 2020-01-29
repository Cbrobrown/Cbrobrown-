void setup(){
  size(521,500);
}
void draw(){
 background(150);
 fill(255);
 textAlign(LEFT);
  text(mouseX+":Mph. ="+KnotConverter(mouseX),10,10);
  text(mouseX+":Knot. ="+MphConverter(mouseX),10,25);
  drawRef();
}
float KnotConverter(float Knot){
  Knot=mouseX/1.151;
  return Knot;
}
float MphConverter(float Mph){
 Mph=mouseX*1.151;
  return Mph;
}
void drawRef(){
  line(0,80,width,80);
//draw tic marks over line
for(int i=5; i<width; i+=5){
  line(i,75,i,85);
  for(int j=5; j<width; j+=50){
  line(j,70,j,90);
 textAlign(CENTER);
  text(j,j,100);
 }
}
 fill(205,0,255,20);
 rect(5,75,mouseX-6,10);
}
// mph to knots ,have a boat instead of rect, maybe car when switch to knot to miles
