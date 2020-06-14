import peasy.*;
PeasyCam cam; // initialize our camera object

PShape stevehead;
PImage skin;
//float x,y,z; // coordinates for a box

// create an arraylist to hold many particles
ArrayList<particle> plist = new ArrayList<particle>();

int boundary = 200;
int total = 100; // total number of particles that we want

void setup(){
  size(600,600,P3D);
  
  skin = loadImage("steve.png");
  stevehead = createShape(BOX, 150);
  stevehead.setTexture(skin);
  
  cam = new PeasyCam(this, 600);
}

void draw(){
  background(126,192,238);
  
  
  rotateX( radians(45) ); // rotate along x-axis by 45 degrees
  rotateY( radians(45) ); // rotate along y-axis by 45 degrees
  rotateZ( radians(45) ); // rotate along z-axis by 45 degrees
  
  // autonomous rotation based on the increasing frameCount
  rotateX( frameCount * .01 );
  rotateY( frameCount * .01 );
  rotateZ( frameCount * .01 );
  
  // interactive rotation (based on mouse)
  float rotX = map(mouseX, 0, width, 0, TWO_PI); // map mouse from 0-width to 0-360 degrees (aka 2pi)
  float rotY = map(mouseY, 0, width, 0, TWO_PI); // map mouse from 0-width to 0-360 degrees (aka 2pi)
  //rotateX(rotX);
  //rotateY(rotY);
  
  stroke(0);
  fill(175);
  shape(stevehead,0,0);
  
  /*rectMode(CENTER);
  rect(0,0,200,150);*/
  
  // 3D primitives
  
  /*pushMatrix();
  translate(x,y,z);
  fill(0);
  sphere(20);
  popMatrix();
  z++;*/
}
