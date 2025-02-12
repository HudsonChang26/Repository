/**
 * Brownian motion. 
 * 
 * Recording random movement as a continuous line. 
 */
 


//dot.syntax --> Name.function() or name.variableName


//declaring an object (built from the class Brownian) 
//declaring -- setting aside the memory to make said object
Brownian lineOne;

Brownian lineTwo;

void setup() 
{
  
  lineOne = new Brownian(); //constructing our object --> "constructing" = actually doing something with the carved out memory 
  lineTwo = new Brownian();
  size(640, 360);
  frameRate(30);
  
  lineOne.bSetup(); // (uses dot syntax to call setup function)
  
  lineTwo.bSetup(); // (uses dot syntax to call setup function)
  

}

void draw() 
{
  background(51);
  
  lineOne.bUpdate(); // (uses dot syntax to call Update function)
  lineOne.bDraw(); // (uses dot syntax to call draw function) 
  
  lineTwo.bUpdate(); // (uses dot syntax to call Update function)
  lineTwo.bDraw(); // (uses dot syntax to call draw function)
  

  

}
