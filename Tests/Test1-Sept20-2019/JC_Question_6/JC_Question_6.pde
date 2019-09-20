int count = 100;
float value;
void setup() {
}

void draw() {
  background(255);
  if(count >= 1){
    count = count - 1;
  }
  if(count == 0){
  println(int(random(21)));
  count = 100;
  }
}
