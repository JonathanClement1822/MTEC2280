void setup(){
 size(800,800);
}

void draw(){
background(127);
}

void keyPressed(){
  // or statement (if this or THIS, do this regardless of if its one or the other or both)
if(key == 'a' || key == 'b'){
  background(255,0,0);
}
}
