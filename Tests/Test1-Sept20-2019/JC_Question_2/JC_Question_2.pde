void setup(){
size(800,800);
background(255);
}

void draw(){
fill(128,0,128);
}

void keyPressed(){
if (key == 'q'){
  rect(mouseX,mouseY,30,30);
}

}
