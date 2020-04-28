int[] even = new int[20]; // first 20 even numbers array
int[] odd = new int[20]; // first 20 odd numbers array

void setup(){
  even[0] = 0; // set first element in even array (index 0) to 0
  odd[0] = 1; // set first element in odd array (index 0) to 1
  for(int i=1; i < 20; i++){ // increase index starting at 1 by 1 until 20
    even[i] = even[i-1] + 2; // set current index value equal to previous index value + 2
    odd[i] = odd[i-1] + 2; // set current index value equal to previous index value + 2
  }
  printArray(even); //print the entire array
  printArray(odd); //print the entire array
}

void draw(){
  
}
