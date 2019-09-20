int myTextSize= 46; // so we can change the font size as a changable variable
int menuState = 0 ;
void setup() {
  size (800, 800);
}

void draw () {
  background(255);
  //Changes the text size
  textSize(myTextSize);
  fill(216, 88, 244);
  // positions text on screen X and Y axis ( X , Y)
  textAlign(CENTER, CENTER);
  rect(width/2 - 360, height/2 - 270, 700, 100);
  if (menuState == 1){
  rect(width/2 - 360, height/2 - 100, 700, 100);
  }
  if (menuState == 2){
  rect(width/2 - 360, height/2, 700, 100);
  }
  if (menuState == 3){
  rect(width/2 - 360, height/2 + 100, 700, 100);
  }
  fill(0);
  //text() wants the sting, then followed by both the x and y position
  //Text Box One!!!
  text("Athlettas' Beginning", width/2 - 2, height/2 - 60);

  //Intro Box!!!
  text("Kings Raid: The Precognition", width/2, height/2 - 220);
  fill(127);
  text("Kings Raid: The Precognition", width/2 - 2, height/2 - 218);
}

void keyPressed() {

  // when you press DOWN on keyboard

  if (keyCode == DOWN) {

    // only increase if within 3 menu items

    if (menuState < 3) {

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

    // if we're on menu item #3 and space pressed, exit game

    if (menuState == 3) {

      exit();

    }

  }

  //println(menuState);

}
