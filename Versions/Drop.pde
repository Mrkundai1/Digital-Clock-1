class Drop {
  float x = random(500);
  float yspeed = 1;
  float y = random(-500, 150);
  
  void fall() {
    y = y + yspeed;
  }
  
  void show() {
    stroke(#FFFFFF);
    line(x,y,x,y+10);
  }
}