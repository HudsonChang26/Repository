//keeping track of information

//cartesian grids
//radial grids
//relative structures
//anything else? 

// Initialize Global Variables

int x = 0; 
int y = 0; 
int r = 50; 
int s = 0; //seconds 
float mx = 0; //minute x 
float my = 0; //minute y

// End Global Variables 


//Global Function
void setup() {
  size(700, 700);
  background(194, 255, 210);
  pixelDensity(2);

  
  x = width / 2;
  y = height / 2;
  

  
  
}



//Global Function
void draw(){
  //Seconds Math
  r = s;
  s = second(); //void draw infinite loop so size keeps changing 
  r = s*10;
  //print(r + "\n");
  println(r);
  
  //Minute Math
  //ellipseMode(CORNER); // Center is used for static non-changing variables

  
  // Minute Math
  float currentMinute=map(second(), 0, 60, 0, TWO_PI)- HALF_PI;
  
  mx = width/2 + 100*sin(currentMinute);
  my = height/2 + 100*cos(currentMinute);
  
  println(mx);
  
  circle(x,y,r);
  line(x,y,mx, my);
  
}
