
float xBall, yBall, ballDiameter;
float xLeftPaddle, yLeftPaddle, widthPaddle, heightPaddle, xRightPaddle, yRightPaddle;
float xLeftScore, yLeftScore, xRightScore, yRightScore, widthScore, heightScore;
float x1LeftNet, y1LeftNet, x2LeftNet, y2LeftNet;
float x1RightNet, y1RightNet, x2RightNet, y2RightNet;
float x1MiddleLine, y1MiddleLine, x2MiddleLine, y2MiddleLine;
PImage bg;

void setup() {
   size(1343, 745);
  population(); 
  bg = loadImage("BasketballBackgroundFORPONG.jpg");
}//End setup

void draw() {
  
  background(bg);
  ball();
  leftPaddleDraw(); 
  rightPaddleDraw();
  line(x1LeftNet, y1LeftNet, x2LeftNet, y2LeftNet);
  line(x1RightNet, y1RightNet, x2RightNet, y2RightNet);
  line(x1MiddleLine, y1MiddleLine, x2MiddleLine, y2MiddleLine); 
  rect(xLeftScore, yLeftScore, widthScore, heightScore);
  rect(xRightScore, yRightScore, widthScore, heightScore);
}//End draw

void keyPressed() {
  leftPaddleMoveKeyPressed();
  rightPaddleMoveKeyPressed();
}//End keyPressed

void mousePressed() {
}//End mousePressed 
