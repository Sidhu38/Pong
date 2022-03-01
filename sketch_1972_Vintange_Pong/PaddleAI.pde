
int rightPaddleSpeed = 1;
Boolean rightPaddleUP=false, rightPaddleDOWN=false;

void rightPaddleDraw() {
  rightPaddleStart();
  //
  if ( yRightPaddle < height*0) yRightPaddle = height*0;
  if ( yRightPaddle+heightPaddle > height) yRightPaddle = height-heightPaddle; 
  // 
  if ( rightPaddleUP==true ) yRightPaddle -= rightPaddleSpeed ;
  if ( rightPaddleDOWN==true ) yRightPaddle += rightPaddleSpeed ;
  //
}//End rightPaddle

void rightPaddleMoveKeyPressed() {

  if ( key==CODED && keyCode==UP ) {
    rightPaddleUP=true;
    rightPaddleDOWN=false;
  }; 
  if ( key==CODED && keyCode==DOWN ) {
    rightPaddleUP=false;
    rightPaddleDOWN=true;
  }
  if ( key==CODED && keyCode==LEFT ) {
    rightPaddleUP=false;
    rightPaddleDOWN=false;
  }

}//End rightPaddlekeyPressed


void rightPaddleStart() {
  rect(xRightPaddle, yRightPaddle, widthPaddle, heightPaddle);
}//End rightPaddleStart
