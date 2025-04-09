/*
This creates a Screen Base Class
This class acts as a blueprint for any screen in my game 
Doesn't do anything but ensures my other screens have the necessary functions
*/ 

abstract class Screen {
  abstract void display(); //what the screen shows 
  abstract void handleClick(int x, int y); // What happens when clicked
  
}
