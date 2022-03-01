
int leftPaddleSpeed = 1;
Boolean leftPaddleUP=false, leftPaddleDOWN=false;

void leftPaddleDraw() {
  leftPaddleStart(); 
  
  if ( yLeftPaddle <= height*0) yLeftPaddle = height*0;
  if ( yLeftPaddle+heightPaddle >= height) yLeftPaddle = height-heightPaddle; 
  if ( leftPaddleUP==true ) yLeftPaddle -= leftPaddleSpeed ;
  if ( leftPaddleDOWN==true ) yLeftPaddle += leftPaddleSpeed ;

  
}//End leftPaddle

void leftPaddleMoveKeyPressed() {

  if ( key=='W' || key=='w' ) {
    leftPaddleUP=true;
    leftPaddleDOWN=false;
  }; 
  if ( key=='S' || key=='s' ) {
    leftPaddleUP=false;
    leftPaddleDOWN=true;
  }
  if ( key=='D' || key=='d' ) {
    leftPaddleUP=false;
    leftPaddleDOWN=false;
  }
  
}//End lefttPaddleKeyPressed

void leftPaddleStart() {
  rect(xLeftPaddle, yLeftPaddle, widthPaddle, heightPaddle);
}//End leftPaddleStart()
