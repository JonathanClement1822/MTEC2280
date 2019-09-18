int counter = 1;

void setup(){
size(800,800);
}

void draw(){
background(127);

// Nests the function
if(mouseX > width/2 && mouseY > height/2){

background(255,0,0);
}else{
background(0,255,255);
counter++; /// increaces the value of the variable by one
}
}
