// This is our Main File


//Declared the Player

//Class/DataType     |   Name/Handle/Object
Avatar PlayerOne;

//Declare the HomeBase

Environment HomeBase;

//Declare Island(s)
Island IslandOne;
Island IslandTwo;
Island IslandThree;



void setup(){
  
  size(800, 600, P3D);
  
  // These are display parameters 
  initDisplay();
  initAvatar();
  initIsland();
  initEnvironment();
  
  //Initialization of our Character
  PlayerOne = new Avatar();
  IslandOne = new Island();
  IslandTwo = new Island();
  IslandThree = new Island();
  
  
  
}



void draw(){
  
  background(0); //clears screen each frame
  
  IslandOne.draw();
  IslandTwo.draw();
  IslandThree.draw();
  
  PlayerOne.update();
  PlayerOne.draw();
  

  
  
  
}
