int savedTime;
int totalTime = 5000;

void setup(){
  size(200,200);
  background(0);
  savedTime = millis();
} 
void draw(){
  int passedTime = millis() - savedTime; 
  if (passedTime > totalTime) {
  println("5 seconds have passed!");
  background(random(255)); 
  savedTime = millis();
  }
}
