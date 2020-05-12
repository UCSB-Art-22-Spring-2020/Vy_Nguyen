particle p; // initialize a particle named p
particle q;

void setup(){
  size(600,600); 
  colorMode(HSB);
  
  p = new particle(width/2, height/2, 50, random(0,360), 2, 1);
  q = new particle(width/2, height/2, 50, random(0,360), -2, -1);
}

void draw(){
  background(0);

  p.display();
  q.display();
}

void mouseReleased(){
  p.c+=10;
  q.c+=10;
}
