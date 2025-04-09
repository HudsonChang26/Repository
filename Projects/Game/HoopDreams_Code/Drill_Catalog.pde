
/*
  This file creates the page that contains all the sorted drills!
  
*/

class DrillCatalogScreen extends Screen {
  Button backButton; //button to return to home screen
  
  DrillCatalogScreen(){
    backButton = new Button(width / 2 - 75, height - 150, 150, 50, "Back"); //Creates button to go back 
  }
  

  void display(){ 
    // Drill Catalog Page Display
    background (50, 100, 200);
  
  
    //Title
    fill(255);
    textSize(32);
    textAlign(CENTER, CENTER);
    text("Drill Catalog", width /2, 50);
  
    backButton.show(); //Show the BackButton
    
  }


  void handleClick(int x, int y) {
    //Return to HomeScreen if backbutton clicked
    
   if (backButton.isClicked(x,y)) {
     currentScreen = new HomeScreen();
  }
  }
}
