//Art22 Spring 2020
//week 7 Assignment 7
//author: Vy Nguyen
//June 14, 2020

import peasy.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

PeasyCam cam; 
Minim minim; 
AudioPlayer noise;

PShape stevehead;
PImage skin;
PShape zombiehead;
PImage zombieskin;

// create an arraylist to hold particles
ArrayList<particle> plist = new ArrayList<particle>();

int boundary = 500; // boundary of particles
int total = 50; // total number of particles 

float rotX, rotY, rotZ, camX, camY, camZ; // rotation and translation of our navigation

void setup(){
  size(600,600,P3D);
  
  skin = loadImage("steve.png");
  stevehead = createShape(BOX, 150);
  stevehead.setTexture(skin);
  
  zombieskin = loadImage("zombie.jpg");
  zombiehead = createShape(BOX, 50);
  zombiehead.setTexture(zombieskin);
  
  
  cam = new PeasyCam(this, 600);
  minim = new Minim(this);
  
  noise = minim.loadFile("ZombieSounds.mp3", 1024); // load song file and loop it
  noise.loop();
  
  // add "total" number of particles to our plist
  for ( int i=0; i < total; i++) {
    plist.add( new particle(
    random(-boundary, boundary), // initial x location
    random(-boundary, boundary), // ...y
    random(-boundary, boundary), // ...z
    10, // size
    random(-2,2), // xspeed 
    random(-2,2), // yspeed
    random(-2,2) ) ); // zspeed
  }
}

void draw(){
  background(0);
  
  // autonomous rotation based on the increasing frameCount only for Steve
  pushMatrix();
  rotateX( radians(45) ); // rotate along x-axis by 45 degrees
  rotateY( radians(45) ); // rotate along y-axis by 45 degrees
  rotateZ( radians(45) ); // rotate along z-axis by 45 degrees*/
  rotateX( frameCount * .01 );
  rotateY( frameCount * .01 );
  rotateZ( frameCount * .01 );
  stroke(0);
  fill(175);
  shape(stevehead,0,0);
  popMatrix();
  
  // interactive rotation (based on mouse)
  float rotX = map(mouseX, 0, width, 0, TWO_PI); // map mouse from 0-width to 0-360 degrees (aka 2pi)
  float rotY = map(mouseY, 0, width, 0, TWO_PI); // map mouse from 0-width to 0-360 degrees (aka 2pi)

  nav();
  scene();
  
  if (mousePressed) {
    directionalLight(0,255,0, -1,1,0); // color and direction
  }
  
   for (particle p : plist) { // for every particle in the plist
    p.display(); // run its update() function
  }
}
