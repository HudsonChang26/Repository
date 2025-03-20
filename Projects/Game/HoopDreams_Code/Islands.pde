//This is the "Island" class!
//Each island is a level that player needs to pass by completing drills

void initIsland(){
  IslandOne = new Island();
  IslandTwo = new Island(); //do I even need this? 
  IslandThree = new Island();

}


class Island {
  
  Island(){
    

  }
  
  void update(){
  
  }
  
  void drawIsland(){
    fill(16,161,50);
    rotateX(0.6);
    box(150,100,100);
  }
  
  
  void draw(){
    

    pushMatrix();
      translate(width/2, height/2+200);
      drawIsland();
    popMatrix();
    
    pushMatrix();
      translate(width/2, height/2,-150);
      drawIsland();
    popMatrix();
    
    pushMatrix();
      translate(width/2, 10, -300);
      drawIsland();
    popMatrix();

    
  }


}
