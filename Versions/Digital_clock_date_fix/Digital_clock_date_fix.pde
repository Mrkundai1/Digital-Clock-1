PFont font;
String comma = ":";

void setup() {
  size(500, 150);
  font = loadFont("DSEG14Classic-Bold-96.vlw");
}

void drawTime() {
  String theText = "";
//text(frameCount + "\nFrames p/Sec", width / 2, height / 2);
  
  theText = theText + hour();
    if (hour() < 10) { theText = theText + "0"; }
  theText = theText + comma;
    if (minute() < 10) { theText = theText + "0"; }
  theText = theText + minute();
    //if() { comma = " ";}
  theText = theText + comma;
    if (second() < 10) { theText = theText + "0"; }
  theText = theText + second();
  
  textSize(60);
  fill(#31EA15);
  text(theText, width / 2, height / 2 + 25);
   //text(hour() + ":" + minute() + second() , width / 2, height / 2);
    //pushMatrix();
    //  translate(-100, 0);
    //  text(hour() + ":", width / 2, height / 2);
    //popMatrix();
    
    //pushMatrix();
    //  //translate(-100, 0);
    //  text(minute() + ":", width / 2, height / 2);
    //popMatrix();
    
    //pushMatrix();
    //  translate(100, 0);
    //  text(second(), width / 2, height / 2);
    //popMatrix();
  
  //text(":" + width / 3, height / 3);
  fill(#31EA15, 50);
  text("88:88:88", width / 2, height / 2 + 25);
  text("XX:XX:XX", width / 2, height / 2 + 25);
  
  fill(#1C5214);
  if (millis() % 1000 > 500) {
  text("  :  :  ", width / 2, height / 2 + 25);
  }
}

void drawDate() {
  String theDate = "";
  textSize(50);
  
  if (day() < 10) { theDate = theDate + "0"; }
  
  theDate = theDate + day();
  theDate = theDate + ",";
  theDate = theDate + month();
  theDate = theDate + ",";
  theDate = theDate + year();
  
  fill(#31EA15);
  text(theDate, width / 2, height / 2 + 25);
  fill(#31EA15, 35);
  text("88,88,8888", width / 2, height / 2 + 25);
  text("XX,XX,XXXX", width / 2, height / 2 + 25);
}

void draw() {
  background(#1C5214);
  textFont(font);
  fill(0);
  textAlign(CENTER);
  
  if (mousePressed) {
    drawDate(); } 
  else {
    drawTime();
    }  
}