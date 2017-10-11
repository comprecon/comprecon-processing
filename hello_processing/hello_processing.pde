void setup() {
  size(500,400);
}

void draw() {
  
  background(42,mouseX/2,227);
  fill(220,220,0,90);
  stroke(255);
  
  if (mousePressed) {
    background(255,mouseX/2,227);
    fill(20,130,10,90);

    
    rect(100+mouseX/2,mouseY/6+30,390,390);
    rect(130+mouseX/3,mouseY/5+60,330,330);
    ellipse(30-mouseX/2,mouseY+90,250,30);
    ellipse(100-mouseX/3,mouseY+150,250,30);
    ellipse(160-mouseX/4,mouseY+210,250,30);
    rect(160+mouseX/4,mouseY/4+90,270,270);
    ellipse(220-mouseX/5,mouseY+270,250,30);
    rect(190+mouseX/5,mouseY/3+120,210,210);
    rect(220+mouseX/6,mouseY/2+150,150,150);
  } else {
    ellipse(200+mouseX/2,mouseY/6+200,390,390);
    ellipse(200+mouseX/3,mouseY/5+200,330,330);
    rect(30-mouseX/2,mouseY+90,250,30);
    rect(100-mouseX/3,mouseY+150,250,30);
    rect(160-mouseX/4,mouseY+210,250,30);
    ellipse(200+mouseX/4,mouseY/4+200,270,270);
    rect(220-mouseX/5,mouseY+270,250,30);
    ellipse(200+mouseX/5,mouseY/3+200,210,210);
    ellipse(200+mouseX/6,mouseY/2+200,150,150);
  }

  

  int m = millis();
  noStroke();
  fill(m % 255, 0, 0);
  rect(25, 25, 50, 50);
  fill(0);
  
  text( "x: " + mouseX + " y: " + mouseY, 20, 20 );
  println(mouseX);
  //background(42,156,227);
  //fill(220,220,0,90);
  //stroke(255);
  
  //ellipse(250,200,390,390);
  //ellipse(250,200,330,330);
  //rect(30,90,250,30);
  //rect(100,150,250,30);
  //rect(160,210,250,30);
  //ellipse(250,200,270,270);
  //rect(220,270,250,30);
  //ellipse(250,200,210,210);
  //ellipse(250,200,150,150);
}