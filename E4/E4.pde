Arrow arrows;

void setup (){
  size(300 , 300) ;
  imageMode(CENTER);
  arrows=new Arrow();
}

void draw(){
  background(255);

  for (int i = 0  ; i < arrows.numberOfArrowPerSide ; i++){
    for (int j = 0 ; j < arrows.numberOfArrowPerSide ; j++){

      arrows.currentArrowX(i) ;
      arrows.currentArrowY(j) ;

      pushMatrix();

      arrows.followMouse(arrows.currentArrowX(i), arrows.currentArrowY(j));
      arrows.showArrow();

      popMatrix();
    }
  }
}
