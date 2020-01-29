PFont font;
void setup() {
  size(900,400);
  background(127);
  font = createFont("Marion-Italic-48.vlw",14);
}

void draw() {
  background(#98F4FF);
  textFont(font);
  println(mouseX + " " + mouseY);
  textSize(12);
  drawRef();
  histEvent(190,195,110,25,"Harvard Mark 1","In 1944, this computer was made by IBM's Endicott Laboratories. It was a general purpose electro-mechanical computer.",true);
  histEvent(185,260,185,25,"Atanasoff-Berry Computer","Developed in 1942 by John Vincent atanasoff and Clifford E. Berry of Iowa State University. It was the first binary electronic calculating device.",false);
  histEvent(415,260,75,25,"CDC 6600","First Supercomputer built by Control Data Corporation in 1964.",false);
  histEvent(515,260,70,25,"P6060","First complete, pre-assembled personal computer made by Olivetti in 1975.",false);
  histEvent(165,195,25,25,"Z2","One of the earliest examples of electromechanical relay computers created by Konrad Zuse in 1940.",true);
  histEvent(300,195,108,25,"Ferranti Mark 1","First commercial computer built by Ferranti in 1951",true);
  histEvent(375,260,40,25,"Atlas","Installed by some early computer companies at University of Manchester in 1962",false);
  histEvent(515,195,100,25,"UNIVAC 494","One of the first modern computers created by Sperry Univac in 1975",true);

}

// Draws individual historic events above or below the timeline
void histEvent() {}

// Draws title text and timeline
void drawRef() {
  // Title Text
  textSize(32);
  textAlign(CENTER);
  textFont(font);
  text("Computer Timeline",width/2,50);
  
  // draw instructions for the app
  textSize(14);
  text("Click on historic computers for more",width/2,70);
  text("By: Cameron Brown | 2019",width/2,85);
  
  //draw a decrotive box
  fill(222);
  rect(50,height*0.3,800,250,5);
  
  //draw timeline
  line(100,height*0.6,800,height*0.6);
  
  //draw timeline tick marks
  for (int i=100; i<801; i+=50) {
    line(i,height*0.6-5,i,height*0.6+5);
  }
  textSize(10);
  fill(0);
  text("1930",100,230);
  text("2000",800,230);
  //draw individual historic events on the timeline
  
}

void histEvent(int x,int y,int w,int h, String title, String nimbh, boolean top) {
  //Draw the Button
  fill(200);
  rect(x,y,w,h);
  
  //Draw the connecting line
  if(top==true){
    line(x+20,y+25,x+35,y+45);
  } else {
  line(x+20,y,x+35,y-20);
  }
  //Draw the button title
  fill(0);
  textSize(14);
  textAlign(LEFT);
  text(title,x+5,y+20);
  
  //Detect if the mouse is over the button
  boolean hover = (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h);
  if(hover) {
    textAlign(LEFT);
    if(top) {
      text(nimbh,210,140,600,160);
    } else {
      text(nimbh,210,300,600,160);
    }
  }
}
