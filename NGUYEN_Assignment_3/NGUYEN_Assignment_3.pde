//Art22 Spring 2020
//week 3 Assignment 3
//author: Vy Nguyen
//Apr 21, 2020
//lines 28-46 are taken directly from week3class2a with minor adjustments to stepsizes

float x0, y0, x1, y1; //position variables
float stepSizeX, stepSizeY; //stepSize variables
PImage xp, ie, paint; //images

void setup(){
  size(1920,1080); // size of window
  x0 = x1 = width/2;
  y0 = y1 = height/2;
  stepSizeX = 10;
  stepSizeY = 10;
  xp = loadImage("xp.jpg"); // load image background
  ie = loadImage("ie.png"); // load internet explorer image
  paint = loadImage("paint.jpg"); // load microsoft paint image
  image(xp, 0, 0); // draw image at full scale
}

void draw(){
  
  image(ie, x0, y0); //internet explorer image at center 
  image(paint, x1, y1); // microsoft paint image at center
  
  x0 = x0 + random(-stepSizeX+5, stepSizeX+5); // add a random step to the x direction
  y0 = y0 + random(-stepSizeY+10, stepSizeY+10); // add a random step to the y direction

  if (x0 > width || x0 < 0) { // reset location if we go off screen
    x0 = random(0, width);
  }
  if (y0 > height || y0 < 0) { // reset location if we go off screens
    y0 = random(0, height);
  }
  
  x1 = x1 + random(-stepSizeY+3, stepSizeY+3); // add a random step to the x direction
  y1 = y1 + random(-stepSizeX-10, stepSizeX+10); // add a random step to the y direction

  if (x1 > width || x1 < 0) { // reset location if we go off screen
    x1 = random(0, width);
  }
  if (y1 > height || y1 < 0) { // reset location if we go off screens
    y1 = random(0, height);
  }
}
