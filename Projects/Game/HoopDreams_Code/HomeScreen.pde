//This is the homescreen! 

class HomeScreen extends Screen { //Homescreen inherits the methods and data fields from the class screen
  Button drillButton; // creates button to go to drill catalog 
  
  
  HomeScreen(){
    drillButton = new Button(width/2 - 75, height - 150, 150, 50, "Drill Catalog"); // creates button at bottom of the screen 
  }
  
  void display(){
  
    //Draw Environment
    HomeBase.clouds();
    IslandOne.draw();
    PlayerOne.update(); //to access update function in Player One object 
    PlayerOne.draw();
    
    drillButton.show(); //show navigation button 
    
  }
  
  
  void handleClick(int x, int y) {
    // If button clicked, switch to drill catalog screen 
    
    if (drillButton.isClicked(x,y)) {
      currentScreen = new DrillCatalogScreen();
    }
  }
}
