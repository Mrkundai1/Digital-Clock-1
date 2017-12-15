class Drop {
  float x = random(500);
  float y = random(-600, 200);
  float z = random(0, 10);
  float len = random(5, 10);
  float yspeed = random(4, 5);
  
  void fall() {
    y = y + yspeed;
  
  if (y > height) {
    y = random(-500, 150);
  }
}
  
  void show() {
    float thick = map(z, 0, 15, 1, 2);
    strokeWeight(thick);
    stroke(#FFFFFF);
    line(x,y,x,y+len);
  }
}