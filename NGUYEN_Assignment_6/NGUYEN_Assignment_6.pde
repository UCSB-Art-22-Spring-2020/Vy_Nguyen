//Art22 Spring 2020
//week 6 Assignment 6
//author: Vy Nguyen
//May 12, 2020

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim; // initialize library
AudioPlayer song; // audio file
FFT fft; // frequencies of song
float r = 10; // radius of ellipse
float h;

void setup() {
  size(100, 600);

  minim = new Minim(this); // setup our sound library

  song = minim.loadFile("Mer.mp3", 1024); // load song file and loop it
  song.loop();

  fft = new FFT( song.bufferSize(), song.sampleRate() ); // get info about the song
}

void draw() {
  background(0);

  fft.forward(song.mix); // use fft to "listen" to our song and get info about the different frequencies (~pitches (high/low/middle/etc))

  for ( int i=0; i < fft.specSize(); i++) { // loop through all frequencies in the fft and draw lines for each "Band"
    noStroke();
    fill(65, 105, 225);
    h = map(fft.getBand(10), 0, 50, 0, height); //map fft.getBand(10) from sound range to height range
    ellipse(10, h, r, r);
  }
  
    for ( int i=0; i < fft.specSize(); i++) { // loop through all frequencies in the fft and draw lines for each "Band"
    noStroke();
    fill(65, 105, 225);
    h = map(fft.getBand(20), 0, 50, 0, height); //map fft.getBand(10) from sound range to height range
    ellipse(30, h, r, r);
  }
  
    for ( int i=0; i < fft.specSize(); i++) { // loop through all frequencies in the fft and draw lines for each "Band"
    noStroke();
    fill(65, 105, 225);
    h = map(fft.getBand(30), 0, 50, 0, height); //map fft.getBand(10) from sound range to height range
    ellipse(50, h, r, r);
  }
  
    for ( int i=0; i < fft.specSize(); i++) { // loop through all frequencies in the fft and draw lines for each "Band"
    noStroke();
    fill(65, 105, 225);
    h = map(fft.getBand(40), 0, 50, 0, height); //map fft.getBand(10) from sound range to height range
    ellipse(70, h, r, r);
  }
  
    for ( int i=0; i < fft.specSize(); i++) { // loop through all frequencies in the fft and draw lines for each "Band"
    noStroke();
    fill(65, 105, 225);
    h = map(fft.getBand(50), 0, 50, 0, height); //map fft.getBand(10) from sound range to height range
    ellipse(90, h, r, r);
  }
}
