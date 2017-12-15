PFont font;
String comma = ":";
Drop [] drops = new Drop[300];
int numClicks = 0;
PImage img;

void setup() {
  size(500, 150);
  font = loadFont("DSEG14Classic-Bold-96.vlw");
  for (int i = 0; i < drops.length; i++) {
  drops[i] = new Drop();
 img = loadImage("86966_cloud.png");
 }
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
  noStroke();
  fill(#E6E8E5);
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
  fill(#E6E8E5, 25);
  text("88:88:88", width / 2, height / 2 + 25);
  text("XX:XX:XX", width / 2, height / 2 + 25);
  
  fill(#000000);
  if (millis() % 1000 > 500) {
     text("  :  :  ", width / 2, height / 2 + 25);
     noStroke();
  }
}

void drawDots() {
  image(img, width / 2 - 63, 0);
  for (int i = 0; i < drops.length; i++) 
  {
  drops[i].show();
  drops[i].fall();
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
  
  fill(#E6E8E5);
  text(theDate, width / 2, height / 2 + 25);
  fill(#E6E8E5, 25);
  text("88,88,8888", width / 2, height / 2 + 25);
  text("XX,XX,XXXX", width / 2, height / 2 + 25);
}

void draw() {
  noStroke();
  background(#000000);
  textFont(font);
  fill(0);
  textAlign(CENTER);
  
  if (numClicks == 0) {
    drawTime(); } 
  else if (numClicks == 1) {
    drawDate();
    }  
   else if (numClicks == 2) {
     drawDots();
   }
}

void mousePressed() {
  numClicks++;
  if(numClicks > 2) numClicks = 0;
}