class Arrow{
 
  int x, y, vx, vy;
  boolean state;
  Arrow(int speedX) {
 
 x = mouseX;
 y = height;
 state = true;
 vy = -2;
 vx = speedX;
}

void display() {
  int x1, x2, y1, y2;
  
   x1 = x - 30;
   x2 = x + 30;
  if(state) { 
      y1 = y - 60;
      y2 = y - 60;
     noStroke();
     fill(0, 0, 255);
  }
  else {
     y1 = y - 60;
     y2 = y - 60;
     stroke(0);
     fill(50);
   }
   triangle(x, y, x1, y1, x2, y2);
 } 
  void update() {
  x = x + vx;
  y = y +vy;
    }
    void checkMouse() {
     if(state && dist(mouseX, mouseY, x, y) < 30) {
       state = false;
       vy *= -1;
    }
  }
  
  void run() {
  checkMouse();
  update();
  }
 }
