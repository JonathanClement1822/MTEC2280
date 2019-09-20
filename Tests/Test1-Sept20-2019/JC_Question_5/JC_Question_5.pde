int count = 100;
void setup() {
    //creates a workplace (X,Y)
  size(800, 800);
  textSize(40);
}

void draw() {
  background(255);
  fill(0, 102, 153);
  if(count >= 1){
    count = count - 1;
  }
  text(count,width/2, height/2);
}
