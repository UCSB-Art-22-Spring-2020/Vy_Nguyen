float x, y;


void setup() {
  size(900, 900);
  x = width/2;
  y = height/2;

  fill(240,128,128);
  background(221, 160, 221);

}

void draw() {
  noStroke();
  circle(x, y, 30);
  
  x = x + 10;
  y = y + 10;
 
  
  if (x < 0 || x > width) { 
    x = random(0, width);
    x = x - 10;
  }
  
  if (y < 0 || y > height) { 
    y = random(0, height);
    y = y - 10;
  }
  

  if (y <= 300) {
    fill(255, 182, 193, 50);
  }
  if (y > height/3 && y <= 600) {
    fill(216, 191, 216, 50);
  }
  if (y > 600) {
    fill(100, 149, 237, 50);
  }
}
