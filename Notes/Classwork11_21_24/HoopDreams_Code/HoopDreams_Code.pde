// This is our Main File


//Declared the Player

//Class/DataType             Name/Handle/Object
Avatar                         PlayerOne;




void setup(){
  
  size(800, 800, P3D);
  
  // These are display parameters 
  initDisplay();
  initAvatar();
  //intMap();
  
  //Initialization of our Character
  PlayerOne = new Avatar();
  
  
  
}



void draw(){
  
  
  PlayerOne.draw();
  
  
  
}
