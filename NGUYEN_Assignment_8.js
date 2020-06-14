var h = 200;
var s = 360;
var b = 360;


function setup() {
  createCanvas(800, 400);
}

function draw() {
  let x = width/2;
  let y = height/2;
  background(255);
  colorMode(HSB);
  noStroke();
  fill(x,s,b);
  ellipse(x,y,20,20);
  
  if(x > width){ 
   x = 0; 
  }
  
  if(x < 0){ 
   x = width; 
  }
}

function keyPressed() { 
  let x = width/2;
  let y = height/2;
  if (keyCode === RIGHT_ARROW) { 
         x+=10; 
      }
  if (keyCode === LEFT_ARROW){ 
        x-=10; 
      }
    }
  

  
  