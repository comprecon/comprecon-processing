void setup() {
  size(600,600);
}
void draw() {
  //background(0);
  noStroke();
  if(mousePressed) {
    fill(30,50,20,30);
  } else {
    fill(255);
  }
  
  rect(mouseX-mouseX/2,mouseX-mouseX/2,mouseY,mouseY);
  

}