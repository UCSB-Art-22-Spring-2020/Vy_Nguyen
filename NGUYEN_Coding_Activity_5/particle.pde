class particle{
  
 // variables
 float x,y;
 float size;
 float c;
 float speedX, speedY;
 
 // constructor
 particle( float x_, float y_, float size_, float c_, float speedX_, float speedY_){
   x = x_;
   y = y_;
   size = size_;
   c = c_;
   speedX = speedX_;
   speedY = speedY_;
 
 }
  
 // methods
 void display(){
  strokeWeight(size);
  stroke(c,200,200);
  point(x,y);
  x = x + speedX;
  y = y + speedY;
 }
 
}
