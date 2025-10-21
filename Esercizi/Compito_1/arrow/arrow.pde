ArrayList<Arrow> ar;
void setup() {
  size(1000,500);
  ar=new ArrayList<Arrow>();
  }
  
void draw() {
 
  background(255);
  for( Arrow arrow:ar) {
  arrow.run(); 
  }
}

void mousePressed() {
  
  int speedX = round(random(-2,-2));
  if (speedX == 0) {
   speed  += 1; 
  }
    ar.add(new Arrow(speedX));
}
