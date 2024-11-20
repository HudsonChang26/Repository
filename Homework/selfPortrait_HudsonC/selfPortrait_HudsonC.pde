/* This code makes a self-portrait of Hudson Chang! 
*/

// background setup
void setup(){
  size(500, 500);
  background(200, 240, 240, 50);
}

// draws some guy named Hudson Chang with a cool background! 
void draw(){
  //adds slightly transparent blue triangle to background 
  fill(129, 183, 199, 100);
  noStroke();
  triangle(0,500,500,0,0,0);
  
  //face shape
  fill(247, 223, 206);
  stroke(0, 0, 0);
  ellipse(250, 250, 250, 350);

  //eye left
  fill(255,252,247);
  stroke(0,0,0);
  ellipse(200, 225, 60, 15);
  
  //eye right
  fill(255,252,247);
  stroke(0,0,0);
  ellipse(300, 225, 60, 15);
  
  //nose shadow
  fill(214,167,131);
  noStroke();
  triangle(245, 230, 220, 283, 245, 300);
  //nose line (left)
  fill(0,0,0);
  stroke(0,0,0);
  line(220,283,244,300);
  //nose line (right)
  line(245,300,269,283);
  
  //mouth
  stroke(0,0,0);
  line(200,320, 300, 320);
  strokeWeight(5);
  line(240, 340, 255, 340);
  strokeWeight(2);
  
  //eyeball left
  fill(31,14,2);
  stroke(0,0,0);
  circle(215, 225, 10);
  
  //eyeball right
  fill(31,14,2);
  stroke(0,0,0);
  circle(320,225,10);
  
  //eyebrow left
  arc(200, 200, 50, 25, PI, 2*PI, PIE); 
  
  //eyebrow right
  arc(300, 210, 55, 15, PI, 2*PI, PIE);
  
  //hair
  arc(250, 150, 215, 150, PI, 2*PI, PIE);
  
  //bangs
    //furthest left
  noStroke();
  fill(247, 223, 206);
  triangle(150, 150, 150, 140, 160, 170);
  
    //middle bang
  noStroke();
  fill(247, 223, 206);
  triangle(200, 150, 200, 135, 210, 170);
    //right bang
  noStroke();
  fill(247, 223, 206);
  triangle(300, 150, 300, 135, 310, 170);

  // left ear
  fill(247, 223, 206);
  stroke(0,0,0);
  arc(125, 250, 20, 60, HALF_PI, 3 * HALF_PI, PIE);

  // right ear
  fill(247, 223, 206);
  arc(375, 250, 20, 60, -HALF_PI, HALF_PI, PIE);


}


/* 

||| Video Notes |||
________________________

functionName(arguments, arguments (parameters));

Processing axis = Quadrant III coordinate plane (all positive though) 
  ---> origin at top left corner 

Source: https://www.youtube.com/playlist?list=PLRqwX-V7Uu6bsRnSEJ9tRn4V_XCGXovs4





___________________________

RGB Color: 
stroke = outline
fill = interior 

^^^ Goes above the "shape code" 

colorMode() --> changes how processing interprets color (HSB)

fill(__) --> grayscale 
fill(_,_,_,) --> RGB color
fill(_,_) --> grayscale + transparency (0,255 (opaque))
fill(_,_,_,_) RBB + transparency 

Source: https://www.youtube.com/playlist?list=PLRqwX-V7Uu6Yo4VdQ4ZTtqRQ1AE4t_Ep9
___________


Other Sources: 
_____________________

https://www.youtube.com/playlist?list=PLRqwX-V7Uu6by61pbhdvyEpIeymlmnXzD

https://www.youtube.com/playlist?list=PLRqwX-V7Uu6aFNOgoIMSbSYOkKNTo89uf





__________________________________________________________________________________

||| Notes from class: |||
______________________________

This is a basic program written in C! 

void setup(){
  
  //do something 
  return;
  
}

void draw(){ 
  return; 
}

int return25(){ 
  return 25;
}

int main(){
  setup(); // Don't write data types like void or int here 
  while(1){
    draw();

  int twentyFive = return25();
  
  
  return 0; // If this is anything other than 0, your program is corrupt. Register number on computer --> computer does calculations --> should go back to register # 
} 

// Integer data types
int_8 
int_16
int_32 = int

______________________________________________________________________________

||| Processing.org Documentation |||
______________________________________

Source: https://processing.org/reference


__________________________________________________________________
*/
