class Brownian {
  
  color lineColor;


  
  int num; //length of movement history 
  int range; //chaos/line length/speed
  
  float[] ax;
  float[] ay;

Brownian(){
  num = int(random(1,100));
  
  range = int(random(1,100));
  
  ax = new float[num];
  ay = new float[num];
  
  //Do everything in this function by default, when the class is built

    
    //Randomly establish color here 
    lineColor = color(random(0,255), random(0,255), random(0,255));
    
  }
  //End of constructor 
  
  
  void bSetup(){
    // b for brownian 
    //fills x & y arrays with center canvas position
    for(int i = 0; i < num; i++) {
      ax[i] = width/2;
      ay[i] = height/2;
  }
    
    
  }
  //Update array values 
  void bUpdate(){
      // Shift all elements 1 place to the left --> conveyor belt where next digit at end of array is random (and then plots the point) 
    for(int i = 1; i < num; i++) {
      ax[i-1] = ax[i];
      ay[i-1] = ay[i];
    }

      // Put a new value at the end of the array
    ax[num-1] += random(-range, range);
    ay[num-1] += random(-range, range);

      // Constrain all points to the screen
    ax[num-1] = constrain(ax[num-1], 0, width);
    ay[num-1] = constrain(ay[num-1], 0, height);
    
  }
  
  void bDraw(){
      // Draw a line connecting the points
    for(int i=1; i<num; i++) {    
      float transparency = float(i)/num * 204.0 + 51;
      stroke(lineColor, transparency); // stroke (rgb, alpha) --> alpha = transparency = "a" 
      line(ax[i-1], ay[i-1], ax[i], ay[i]);
  }
    
  }
  
  
  
  
  
}
