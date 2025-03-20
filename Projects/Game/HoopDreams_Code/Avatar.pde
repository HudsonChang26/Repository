
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
  float islandY = height / 2 + 145;  // Island "ceiling" 
  
  // Constructor
  Avatar(){
    
    y = height/2 + 145;        // initial position on top of Island
    z = width / 2;             // initial position on the z-axis
    velocityY = 0;             // indicate that there is no initial movement
    velocityZ = 0.5;           // horizontal speed in the z direction 
    gravity = 1.5;           // Pulls the ball back down 
    bounceFactor = -0.9;   // How much it bounces back (infinite) 
    
    basketballStandard = loadShape("BasketballStandard/tinker.obj"); //define our 3D shape
    
  }


  void update(){
    
    velocityY += gravity;     // apply gravity to velocity
    y += velocityY;           // apply velocity to position
    
    println("y: " + y + ", velocityY: " + velocityY + ", velocityZ: " + velocityZ); //check y position
    
    // Collision with island check

    if (y > islandY) {
      y = islandY;    // reset position to island surface
      velocityY *= bounceFactor; // adjust if you wanted to reverse and reduce speed of bounce (but we want infinite bounces!)
      velocityY += 5;
    }
    
    if (z > width - 100 || z < 100) {
      velocityZ *= -1;
    }
    
    //update z position
    z += velocityZ;
    
    /*
    float floor = height - 50; 
    if (y > floor) {
      y = floor;
      velocity *= bounceFactor;
    }
    */
    

  }
  

  
  void draw(){
    
    pushMatrix();
      translate(width/2+15, y, z); //using the bouncing y and moving z 
      scale(1.5);
      //rotateX(PI/2);
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

}
