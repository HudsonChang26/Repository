
/* 
  This tab is for the customizable hooper that represents the player playing!
  
*/ 

//Playable sphere

//Initialize Player Object(s)
void initAvatar(){
  PlayerOne = new Avatar();
  
  
}

class Avatar {
  
  PShape basketballStandard; // Declaring basketball 3D shape 
  
  float y;               // vertical position
  float z;               // dept position (z-axis)
  float velocityY;        // upward speed in y direction
  float velocityZ;        // movement speed in z direction 
  float gravity;         // gravitational force pulling ball down
  float bounceFactor;    // energy loss on bounce (but infinite for this case) 
  float islandY = height / 2 + 75;  // Island "ceiling" 
  float rotationX;                               // rotation to try later
  float rotationY;                               //rotation to try later
  float rotationZ;                               // rotation to try later
    
  // Constructor
  Avatar(){
    
    y = height / 2;        // initial position on top of Island
    velocityY = 0;             // indicate that there is no initial movement
    gravity = 3;           // Pulls the ball back down 
    bounceFactor = -1;   // How much it bounces back (infinite) 

    
    basketballStandard = loadShape("BasketballStandard/tinker.obj"); //define our 3D shape
    
  }

  
  void draw(){
    
    pushMatrix();
      //translate(width/2+15, y, z); //using the bouncing y and moving z 
      translate(width/2+25, y, z);
      scale(4);
      shape(basketballStandard, 0, 0);
    popMatrix();
    
    /*
    pushMatrix();
      translate(width/2,y,75);
      fill(255, 0, 0);
      sphereDetail(15);
      sphere(40);
    popMatrix();
    */
  }
  
  void pov(){
    
    
  }
  
    void update(){
    
    velocityY += gravity;     // apply gravity to velocity
    y += velocityY;           // apply velocity to position
    
    println("y: " + y + ", velocityY: " + velocityY + ", velocityZ: " + velocityZ); //check y and z position
    

    
    
    // Collision with island check

    if (y > islandY) {
      y = islandY;    // reset position to island surface
      velocityY *= bounceFactor; // Reverse velocity


      //velocityY += 5;
    }
    

    
    
    if (y < height/2) {
      velocityY *= bounceFactor; //Reverse velocity if too high

      
      if (velocityY < 0) {
        velocityY -= 5;
      }
    }
    
  
  
  }

}
