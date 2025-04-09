
/* 
  This is the gameboard for our game! 
  - "Islands"
  - Background -- dependent on level 



Environment Idea: 
- If clouds: 
  - 3d model 
  - For loop 
  - Random Generation
*/ 

void initEnvironment(){
  HomeBase = new Environment();
  
}


class Environment{
  
// Declare Image Object 
  PImage cloudsBackground;
  
  
  Environment(){
    cloudsBackground = loadImage("ASSET_CloudsBackground.jpg");
    
  }

    void clouds(){
      pushMatrix();
        translate(-30,0);
        scale(1.1);
        image(cloudsBackground, 0, 0);
      popMatrix();
    }
      
}
