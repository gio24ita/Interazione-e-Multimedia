PImage img;

void setup() {
 size (512, 256); 
 img = loadImage("lenna.png");
 img.resize(256, 256);
 image(img, 0, 0);
 image(rev(img), 256, 0);
}

PImage rev(PImage img) {
  PImage out = img.copy();
  out.loadPixels();

for(int x = 0; x < out.width; x ++) {
 for(int y = 0; y < out.height / 2; y++) { 
     // bottom
     var pixel = img.get(x, y);
     //color c = color(red(pixel), random(255), 255);
     out.set(x, y + out.height / 2, pixel);
     
     // top
     pixel = img.get(x, y + halfHeight);
     color c = color(255, green(pixel), blue(pixel));
     out.set(x, y, pixel);
   
   
 }
 return out;
}

 
 
  if(key == 'r') {
   setup();
  }
  
}
