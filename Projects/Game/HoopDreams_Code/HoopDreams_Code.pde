// This is our Main File


//Declared the Player

//Class/DataType     |   Name/Handle/Object
Avatar PlayerOne;


//Declare Island(s)
Island IslandOne;
Island IslandTwo;
Island IslandThree;

//Declare the HomeBase

Environment HomeBase;





void setup(){
  
  size(800, 600, P3D);
  
  // These are display parameters 
  initDisplay();
  initAvatar();
  initIsland();
  initEnvironment();
  
  //Initialization of our Character
  // PlayerOne = new Avatar();
  IslandOne = new Island();
  IslandTwo = new Island();
  IslandThree = new Island();
  
  
  
}



void draw(){
  
  //background(0); //clears screen each frame
  
  HomeBase.clouds();
  IslandOne.draw();
  IslandTwo.draw();
  IslandThree.draw();
  
  PlayerOne.update();
  PlayerOne.draw();

  

  
  
  
}
