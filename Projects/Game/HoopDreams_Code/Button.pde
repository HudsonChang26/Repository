//This file creates a class for the buttons! 


class Button {
  float x, y, w, h; //position and size
  String label; //text on the button
  
  Button(float x, float y, float w, float h, String label) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.label = label;
    
  }
  
  
  void show(){
    //button background
    fill(255);
    rect(x,y,w,h,10); //rounded corners
    
    //Draw the button label
    
    fill(0); //Black Text
    textSize(20);
    textAlign(CENTER, CENTER);
    text(label, x+w/2, y+h/2);
  }
  
  // Check if mouse click was inside the button boundaries
  boolean isClicked(int mx, int my) {
    return mx > x && mx < x + w && my > y && my < y + h; 
  }
}
    
  
