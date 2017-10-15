float scrollVal = 0;
float ellipseSize = 60;

void setup() {
  size(500, 500); //declare canvas size
}

void draw() {
  //main program, also a loop
  
  background(89,89,227);
  fill(255);
  stroke(0);
  if (scrollVal > 0) {
    ellipseSize = ellipseSize + 10;
  } else if (scrollVal < 0) {
    ellipseSize = ellipseSize - 10;
  }
  
  ellipseSize = constrain(ellipseSize, 60,500);
  ellipse(250,250,ellipseSize,ellipseSize);
  println(scrollVal);
}

void mouseWheel(MouseEvent event) {
  scrollVal = event.getCount();
}