/*This program is about simulating particle system */ 
//Particle system 
//Nature of Code
/*import java.until.*; 

int x,y,w,h;
int mover = 0;
int new_Mover;

int particle;

void setup() {
  size(400,400);
  mover = new_Mover(200,200);
}
void draw() {
  background(0,0,0); 
  
  if(mousePressed) {
    int wind = createVector(0.1,0);
    int mover.applyForce(wind);
  }
   let gravity = createVector(0, 0.2);
   mover.applyForce(gravity);


  particle.update();
  particle.edges();
  particle.show();
 } 
 
*/



/*starting from here____________________________________*/
//bouncing ball applying gravity
/* variavle table

//control which screen is active by settings 

0: Initial Screen
1: Game Screen
2: Game-over Screen
*/ 


int gameScreen = 0;
//set up

void draw() {
//display contents of the current screen
if (gameScreen == 0) {
  initScreen();
 } else if(gameScreen ==1) {
  gameScreen();
 } else if (gameScreen ==2) {
  gameOverScreen();
 }  
}
//screen contents
void initScreen() {
//initial screen code
}
void gameScreen() {
//game screen code
}
void gameOverScreen() {
//gameover screen code
} 

//inputs 
public void mousePressed(){
//if on the initial screen when clicked, start the game
if (gameScreen ==0) {
    startGame();
  }
}
//other functions 
//method sets necessary variables to start the game 
void startGame() {
  gameScreen=1;
}
//clicked, screen ==0, start game
void initScreen() {
  background(0);
  textAlign(CENTER);
  text("Click to start", height/2, width/2);
}

void gameScreen() {
  background(255);
}

int ballX, ballY; 
int ballSize = 20;
int ballColor = color(255);

void setup() {
  ballX = width/4;
  ballY = height/5;
} 
void gameScreen() {
  fill(ballColor);
  ellipse(ballX,ballY,ballSize,ballSize);
}
float gravity = 1 ;//setting gravity 
float ballSpeedVert = 0;

void gameScreen() {
  applyGravity();
  keepInScreen();
} 
