void setup() {
  //creates a workplace (X,Y)
  size(800, 700);
}

void draw() {
  //Creates workspace color (R,G,B)
  background(0, 255, 182);

  //fills the color of all proceding shapes
  fill(mouseX,mouseY,mouseX);

  // Draws an ellipse (x1,y1,x2,y2)
  ellipse(mouseX, mouseY, 100, 100);

  stroke(255, 0, 0);
  strokeWeight(4);

  //draws a line (x1,y1,x2,y2)
  line(0, 0, width, height);
}
