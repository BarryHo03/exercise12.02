class Arrow{
  PImage arrow ;
  final int ArrowLength = 30 ;
  final int numberOfArrowPerSide = 10 ;
  final int fixImageOffset = ArrowLength / 2;


void showArrow(){
  arrow=loadImage("arrow.png");
 image(arrow,0,0);
}

int currentArrowX(int i){
  return fixImageOffset  + i * ArrowLength ;
}
int currentArrowY(int j){
  return fixImageOffset  + j * ArrowLength ;
} 
void followMouse(int a,int b){  
  translate(a,b);
  rotate( atan2(mouseY - b , mouseX - a )) ;


}


}
