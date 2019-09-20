void setup() {
    //creates a workplace (X,Y)
  size(500, 500);
}

void draw() {
  //Creates workspace color (R,G,B)
  background(0, 182, 255);
  //draws a line (x1,y1,x2,y2)
  line(0, 0, width, width);
  line(width, 0, 0, height);
  //fills the color of all proceding shapes
  fill(mouseX, mouseY, 0);
  // Draws an ellipse (x1,y1,x2,y2)
  ellipse(width/2, height/2, mouseX, mouseY);
  //Creates a rectangle on the canvas (X1, Y1, X2, Y2)
  rect(width/2, height/2, mouseX, mouseY);
  rect(0, 0, mouseX, mouseY);
  //Changes the line width of a object
  strokeWeight(4);
}
