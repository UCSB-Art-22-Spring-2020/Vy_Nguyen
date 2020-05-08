float[] numbers = new float[40];

void setup(){
  numbers[0] = 10;
  numbers[37] = 20;
  printArray(numbers);
  for(int i=0; i < numbers.length; i++){
    numbers[i] = random(0,50);
  }
 printArray(numbers);
 println(numbers[9]);
}

void draw(){
  
}
