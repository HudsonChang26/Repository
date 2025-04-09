//This is the "Island" class!
//Each island is a level that player needs to pass by completing drills

void initIsland(){
  IslandOne = new Island();

}


class Island {
  
  PImage courtTexture;
  
  Island() {
    courtTexture = assets.courtTexture;
  }
  
  void update(){
  
  }
  
  void drawIsland(){
    fill(94, 117, 70);
    rotateX(0.7);
    box(325,250,200);
  }
  
  
  void draw(){
    

    pushMatrix();
      translate(width/2, height/2 + 150, 0);
      //rotateX(HALF_PI); // Rotate to lay flat like floor
      drawIsland();
      
      if (courtTexture != null) {
        pushMatrix();
          translate(0, 10, 105);
     
          beginShape();
          texture(courtTexture);
          vertex(-150, -200, 0, 0, 0);
          vertex(150, -200, 0, courtTexture.width, 0);
          vertex(150, 100, 0, courtTexture.width, courtTexture.height);
          vertex(-150, 100, 0, 0, courtTexture.height);
          endShape(CLOSE);
        popMatrix();
    } 
      else {
        fill(100, 80, 40); // fallback fill color
        box(400, 400, 10); // optional: your previous shape
    }

      
    popMatrix();
    

    
  }


}
