void setup(){
size (800,800);
}

void draw(){
  for (int i = 0; i < 10; i+=10){
    println(i);
    line(i, 0, i, height);
  }
}
