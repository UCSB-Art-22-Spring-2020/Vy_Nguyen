float xPos, yPos, xPos1, yPos1; // position variables for geometry
float xVel, yVel, xVel1, yVel1; // velocity variables for geometry
float xDirection, yDirection, xDirection1, yDirection1; // direction variables for geometry

void setup() {
  size(600, 600);
  xPos = width/2;
  yPos = height/2;
  
  xPos1 = width/2;
  yPos1 = height/2;

  xVel = 3; // velocity of xPos
  yVel = 3; // velocity of yPos
  xDirection = 5; // initial x direction
  yDirection = 1; // initial y direction
  
  xVel1 = 3; // velocity of xPos
  yVel1 = 3; // velocity of yPos
  xDirection1 = 1; // initial x direction
  yDirection1 = 5; // initial y direction
  
  background(255, 182, 193); //set background color pink
}

void draw() {
 
  rect(xPos, yPos, 20, 20, 5);
  noStroke();

  xPos = xPos + (xVel * xDirection); // move by x velocity in the current direction ...same as xPos+=xVel
  yPos = yPos + (yVel * yDirection); // move by y velocity in the current direction ...same as yPos+=yVel
  
  xPos1 = xPos1 + (xVel1 * xDirection1); // move by x velocity in the current direction ...same as xPos+=xVel
  yPos1 = yPos1 + (yVel1 * yDirection1); // move by y velocity in the current direction ...same as yPos+=yVel


  if (xPos > width || xPos < 0) { // check if we are at the edge of our screen
    xDirection = xDirection * -1; // change direction to the other sign (+ to -, or - to +)
  }

  if (yPos > height || yPos < 0) { // check if we are at the edge of our screen
    yDirection = yDirection * -1; // change direction to the other sign (+ to -, or - to +)
  }

  if (keyPressed) { // have we pressed a key?
    if (key == 'x') { // is that key x?
      xVel = random(1, 10); // if so, set x velocity to random number between 1-9
      println("xVel = :", xVel);
    }
    if (key == 'y') { // is that key y?
      yVel = random(1, 10); // if so, set x velocity to random number between 1-9
      println("yVel = :", yVel);
    }
    if (key == 'e'){ // is that key e?
      ellipse(xPos1, yPos1, 20, 20);
      noStroke();
    }
  }
}
