import processing.serial.*;


//int end = 10;    // the number 10 is ASCII for linefeed (end of serial.println), later we will look for this to break up individual messages
//String serial;   // declare a new string called 'serial' . A string is a sequence of characters (data type know as "char")


String rawData;
float floatValue;

Serial myPort;

void setup() {
  size(500, 400);
  background(10, 80, 100);

  // Prints out the available serial ports.
  println(Serial.list());
  
  String portName = Serial.list()[3]; //change the 0 to a 1 or 2 etc. to match your port
  myPort = new Serial(this, portName, 9600);
  myPort.clear();
}

void draw() {
  if ( myPort.available() > 0) {
    rawData = myPort.readStringUntil('\n'); // read pin 0 on the arduino
    println(rawData);
    
    if (rawData != null) {
      floatValue = float(rawData); // convert to float to work with ellipse()
      
      stroke(255, 255, 255);
      fill(160, 220, 90);
      ellipse(floatValue, 200, 300, 300);
    
      fill(160, 210, 230);
      rect(245, floatValue, 10, 240);
    
      fill(255, 255, 255);
      ellipse(floatValue, floatValue, 70, 70);      
    }
  }
}