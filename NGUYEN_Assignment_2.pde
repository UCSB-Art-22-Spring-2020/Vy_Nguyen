//Art22 Spring 2020
//week 2 Assignment 2
//author: Vy Nguyen
//Apr 14, 2020
//lines 42-49 and lines 58-64 is code taken directly from week2class2

int x, y; // position variable
PImage nook, mac, hamlet, ruby, marshal, villager, bells; // images

void setup() {
  size(647, 607);  // size of window
  x = width/2; // set x position to center
  y = height/2; // set y position to center
  nook = loadImage("tomnook.png"); // load image
  mac = loadImage("Mac_NLa.png"); // load image
  hamlet = loadImage("Hamlet_NLa.png"); // load image
  ruby = loadImage("Ruby_NLa.png"); // load image
  marshal = loadImage("Marshal_NL.png"); // load image
  villager = loadImage("villager.png"); // load image
  bells = loadImage("bells.png"); // load image
  mac.resize(0, 130); // resize to scale at 130 pixels high
  ruby.resize(0, 130); // resize to scale at 130 pixels high
  hamlet.resize(0, 100); // resize to scale at 100 pixels high
  marshal.resize(0, 100); // resize to scale at 100 pixels high
}

void draw() {
  background(0); // background black
  noCursor(); // hide mouse
  image(nook, 0, 0); // draw image at full scale
  image(villager, mouseX, mouseY, villager.width/10, villager.height/10); // villager image at mouse position (1/10 scale)
  image(hamlet, y+162, x+162); // hamlet image at x and y positions
  image(ruby, x+152, y-152);  // ruby image at x and y positions
  image(marshal, y-162, x-162); // marshal image at x and y positions
  image(mac, x-152, y+152); // mac image at x and y positions
  
  for (int i=0; i<20; i++) { // start counting at 0 and keep counting (looping) while i is less than 100
    image(bells, random(0, width), random(0, height), bells.width/10, bells.height/10); // bells images generated at random x and y positions (1/10 scale)
  }
  
  if (keyPressed) { // is a key pressed?
    if (key == CODED) { // is it a special "CODED" key?
      if (keyCode == RIGHT) { // is the coded key the right arrow?
        x+=10; // same as saying x = x+10
      }
      if (keyCode == LEFT) { // is the coded key the left arrow?
        x-=10; // same as saying x = x-10
      }
      if (keyCode == UP) { // is the coded key the up arrow?
        y+=10; // same as saying y = y+10
      }
      if (keyCode == DOWN) { // is the coded key the down arrow?
        y-=10; // same as saying y = y-10
      }
    }

    if (x > width) { // if x goes out of bounds on the right
      x = 0; // reset to the left
    }

    if (x < 0) { // if x goes out of bounds on the left
      x = width; // reset to the right
    }
    if (y > height) { // if y goes out of bounds on the top
      y = 0; // reset to the bottom
    }

    if (y < 0) { // if y goes out of bounds on the bottom
      y = height; // reset to the top
    }
  } 
}
