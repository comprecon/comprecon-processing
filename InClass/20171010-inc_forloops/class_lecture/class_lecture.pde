//int r1 = 255;
//int g1 = 234;
int b1 = 40;
boolean conditionName = true;

int white = 255;

void setup() {
  size(500,400); // center is at (250,200)
}

void draw() {
  float r1 = mouseX;
  float g1 = map(mouseY, 0,400, 0,255);
  r1 = map(mouseX,0,500, 0,255);
  
  if(mousePressed) {
    background(0);
  } else {
    background(r1,g1,r1/3);
  }

  
  
  
 
  stroke(183,18,134);
  fill(175,255,204,205);
  
  ellipse(250,200, 50,50);
  rect(mouseY-25,mouseX-25, 50,50);
  
  stroke(white);
  line(25,300, 400,300);
  
  stroke(183,18,134);
  triangle(40,50, 60,100, 300, 2);
  
  quad(100,25, 200,30, 260,120, 100,200);
  

}