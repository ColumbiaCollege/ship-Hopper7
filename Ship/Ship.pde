//Shane Hopper
//variables for position
float xPos =0;
float yPos = 0;

//other variables
int dia=20; 
float sp=1;
//int starCount = 0;

//void Stars() {
//  int xValue = int(random(0,500));
//  int yValue = int(random(0,500));
//  int size = int(random(1,5));
//    //stars
//    fill(255);
//    ellipse(xValue,yValue,size,size);
//}

//Booleans for movement
boolean right = false;
boolean left = false;
boolean up = false;
boolean down = false;

String[] controls = {"Press Arrows to Move,","and B for Boost!"}; 

void setup() {
  //window modifications
  size(500, 500);
  background(255);
  smooth();

  //initial position
  xPos = width/2;
  yPos = height/2;

  //shape properties
  stroke(255);
  fill(0, 0, 255);
}

void draw() {
  //wipe
  background(0);
  fill(255);
  textSize(40);
  textAlign(CENTER,CENTER);
  text(controls[0], width/2, height/4);
  text(controls[1],width/2,height*3/4);
//int starCount = 0;
  //stars
  //for (; starCount < 40; starCount++){
  //  Stars();
  // }

  //update position
  if (left) {
    xPos = xPos - sp;
  }
  if (right) {
    xPos = xPos + sp;
  }
  if (up) {
    yPos = yPos - sp;
  }
  if (down) {
    yPos = yPos + sp;
  }
  
  //draw shape
  ellipse(xPos, yPos, dia, dia);
}

void keyPressed() {
  if (key == CODED) {
    if(keyCode == LEFT) {
      left = true;
    }
  }
  if (key == CODED) {
    if(keyCode == RIGHT) {
      right = true;
    }
  }
  if (key == CODED) {
    if(keyCode == UP) {
      up = true;
    }
  }
  if (key == CODED) {
    if(keyCode == DOWN) {
      down = true;
    }
  }
  if(xPos < 0+dia/2) {
    left = false;
  }
  if(xPos > width-dia/2) {
    right = false;
  }
  if(yPos < 0+dia/2) {
    up = false;
  }
  if(yPos > height-dia/2) {
    down = false;
  }
  if(key == 'b'){
    sp = 2.5;
  }
}
void keyReleased(){
    if(key == CODED) {
    if(keyCode == LEFT) {
      left = false;
    }
  }
  if(key == CODED) {
    if(keyCode == RIGHT) {
      right = false;
    }
  }
  if(key == CODED) {
    if(keyCode == UP) {
       up = false;
    }
  }
  if(key == CODED) {
    if(keyCode == DOWN) {
      down = false;
    }
  }
  if(key == 'b'){
    sp = 1;
  }
}
