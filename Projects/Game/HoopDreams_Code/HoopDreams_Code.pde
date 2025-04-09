// This is our Main File! 


//Declared the Player

//Class/DataType     |   Name/Handle/Object
Avatar PlayerOne;

//Declare the Assets object globally
Assets assets;

//Declare Island(s)
Island IslandOne;

//Declare the HomeBase

Environment HomeBase;


//Keep track of what screen we are on
Screen currentScreen;






void setup(){
  
  size(800, 1000, P3D);
  
  assets = new Assets(); //Load all image textures here 
  // These are display parameters 
  initDisplay();
  initAvatar();
  initIsland();
  initEnvironment();
  
  //Initialization of our Character
  // PlayerOne = new Avatar();
  //IslandOne = new Island(assets); // transfer textures to Island

  currentScreen = new HomeScreen(); //start on homescreen 
  
  
}



void draw(){
  
  background(0); //clears screen each frame
  currentScreen.display(); //Draw the currently active screen

}

void mousePressed(){
  currentScreen.handleClick(mouseX, mouseY); //Handle button presses
  
}
