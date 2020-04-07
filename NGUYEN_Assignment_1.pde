//Art22 Spring 2020
//week 1 Assignment 1
//author: Vy Nguyen
//Apr 7, 2020
//lines 26-53 is borrowed code from the examples page of Processing.org

void setup(){
  size(600,600); //size of window
}

void draw(){
 background(204,204,255); //colored background purple
 point(mouseX,mouseY); //x-coordinate of mouse, y-coordinate of mouse
 strokeWeight(20); // thickness of point
 
 if (mouseY < 200){            //if we are on top third of screen
    stroke(255,0,0,100);      //point is translucent red
  } else if (mouseY < 400){   //if we are in middle of screen
    stroke(255,255,255,100);  //point is translucent white
  }
    else if (mouseY < 600){   //if we are in bottom third of screen
      stroke(0,0,255,100);    //point is translucent blue
  }

 fill(250,250,210); //colored star yellow
 
 pushMatrix(); //I'm not sure ???
  translate(width*0.5, height*0.5); //moved star to center of window
  rotate(frameCount / -50.0); //how fast star is rotating and in which direction
  star(100, 100, 10, 20, 5);  //x-coordinate, y-coordinate, radius 1, radius 2, number of vertices  
  popMatrix(); //I'm not sure ???
 
 //fill(250,250,210); //colored star yellow
 pushMatrix(); //I'm not sure ???
  translate(width*0.5, height*0.5); //moved star to center of window
  rotate(frameCount / 50.0); //how fast star is rotating and in which direction
  star(1, 1, 50, 90, 5);  //x-coordinate, y-coordinate, radius 1, radius 2, number of vertices  
  popMatrix(); //I'm not sure ???
}

void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
