
/* 
  This tab is for the customizable hooper that represents the player playing!
  
*/ 

//Playable sphere

//Initialize Player Object(s)
void initAvatar(){
  PlayerOne = new Avatar();
  
  
}

class Avatar {
  
  
  float y;               // vertical position
  float velocity;        // upward speed in y direction
  float gravity;         // gravitational force pulling ball down
  float bounceFactor;    // energy loss on bounce (but infinite for this case) 
  
  // Default Constructor
  Avatar(){
    
    y = height/2 + 145;        // initial position on top of Island
    velocity = 0;             // indicate that there is no initial movement
    gravity = 0.5;           // Pulls the ball back down 
    bounceFactor = -0.95;   // How much it bounces back (infinite) 
    
    
  }


  void update(){
    
    velocity += gravity;     // apply gravity to velocity
    y += velocity;           // apply velocity to position
    
    
    // Collision with island check
    float islandY = height / 2 + 145;  // Island "ceiling" 
    if (y > islandY) {
      y = islandY;    // reset position to island surface
      velocity *= bounceFactor; // adjust if you wanted to reverse and reduce speed of bounce (but we want infinite bounces!)
    }
    
    float floor = height - 50; 
    if (y > floor) {
      y = floor;
      velocity *= bounceFactor;
    }
  }
  
  void draw(){
    
    
    
    pushMatrix();
      translate(width/2,y,75);
      fill(255, 0, 0);
      sphereDetail(15);
      sphere(40);
    popMatrix();

  }
  
  void pov(){
    
    
  }

}
