// so we can change the font size as a changable variable
int myTextSize= 46;
// Allows to have a movable selection square that allows for user
//interactibility
int menuState = 0 ;
// allows for different programs to co-exist with one program 
int World1 = 0;
// brought in from drawing program
int drawMode = 0;
int thickness = 1;
void setup() {
  size (800, 800);
  if (World1 == 1) {
    background(255);
  }
}

void draw () {
  if (World1 == 0) {
    background(53, 81, 92);
    //Changes the text size
    textSize(myTextSize);
    fill(216, 88, 244);
    // positions text on screen X and Y axis ( X , Y)
    textAlign(CENTER, CENTER);
    rect(width/2 - 360, height/2 - 270, 700, 100);
    if (menuState == 1) {
      rect(width/2 - 360, height/2 - 100, 700, 100);
    }
    if (menuState == 2) {
      rect(width/2 - 360, height/2, 700, 100);
    }
    if (menuState == 3) {
      rect(width/2 - 360, height/2 + 100, 700, 100);
    }
    if (menuState == 4) {
      rect(width/2 - 360, height/2 + 200, 700, 100);
    }
    fill(0);
    //text() wants the sting, then followed by both the x and y position
    //Text Box One!!!
    text("Athlettas' Beginning", width/2 - 2, height/2 - 60);
    //Text Box One!!!
    text("Malakai's Beginning", width/2 - 2, height/2 + 40);
    //Text Box One!!!
    text("Fortune tellers End", width/2 - 2, height/2 + 140);
    //Text Box One!!!
    text("EXIT", width/2 - 2, height/2 + 240);

    //Intro Box!!!
    text("Kings Raid: The Precognition", width/2, height/2 - 220);
    fill(127);
    text("Kings Raid: The Precognition", width/2 - 2, height/2 - 218);
    ///////////
    ///////////
    ///////////
  }
}

void keyPressed() {
  if (World1 == 0) {
    // when you press DOWN on keyboard

    if (keyCode == DOWN) {

      // only increase if within 3 menu items

      if (menuState < 4) {

        menuState = menuState + 1;
      }
    }

    // when you press UP

    if (keyCode == UP) {

      if (menuState > 1) {

        menuState = menuState - 1;
      }
    }

    // add an "activate button" on spacebar press

    if (key == ' ') {

      if (menuState == 1) {
        World1 = World1 + 1;
      }
      // if we're on menu item #3 and space pressed, exit game

      if (menuState == 4) {

        exit();
      }
      ///////////////////////////////
      ///////////////////////////////
      ///////////////////////////////
    }
    if (World1 == 1) {
      println(key);

      // When using "if" statements, use two equal signs to find a value
      // When using keyboard keys use single quotes ('')
      if (key == 'g') {
        stroke(0, 255, 0); // sets stroke color
      }
      if (key == 'h') {
        stroke(255, 0, 0); // sets stroke color
      }
      if (key == 'j') {
        stroke(0, 0, 255); // sets stroke color
      }
      if (key == 'k') {
        stroke(0); // sets stroke color
      }
      if (key == 'y') {
        stroke(0); // sets stroke color
      }
      if (key == 'l') {
        stroke(255); // sets stroke color
      }
      if (key == 'c') {
        background(255); // sets stroke color
        println("Clear");
      }
      if (drawMode >= 3) {
        drawMode =3;  
        println("Draw mode =" + drawMode);
      }
      if (drawMode == 1) {
        println("Draw mode =" + drawMode);
      }
      if (drawMode == 2) {
        println("Draw mode =" + drawMode);
      }
      if (drawMode <= 0) {
        drawMode = 0;
        println("Draw mode =" + drawMode);
      }
      if (key == 'q') {
        drawMode = drawMode + 1; // sets Draw Mode
      }
      if (key == 'w') {
        drawMode = drawMode - 1; // sets Draw Mode
        println("Draw mode =" + drawMode);
      }

      //for up and down keys using codec

      if (keyCode == UP) {
        thickness = thickness + 1;
        strokeWeight(thickness);
        println("thickness:", thickness);
      }
      if (keyCode == DOWN) {
        if (thickness > 0) {
          // maintains a value in the program
          thickness = thickness - 1;
          //sets stroke weight to thickness
          strokeWeight(thickness);
        }
        //prints current saved value
        println("thickness:", thickness);
      }
    }
  }
  ////////
  /////////
  /////////
 void mouseDragged() {
    if (World1 == 1) {
      //Draw a mouse from where is is now
      // To where is was last frame
      if (drawMode == 0) {
        ellipse(mouseX, mouseY, 30, 30);
      }
      if (drawMode == 1) {
        line(mouseX, mouseY, pmouseX, pmouseY);
      }
      if (drawMode == 2) {
        triangle(mouseX, mouseY, mouseX + 60, mouseY + 60, mouseX - 120, mouseY - 120);
      }
      if (drawMode == 3) {
        rect(mouseX, mouseY, 60, 60);
      }
    }
    //println(menuState);
  }
