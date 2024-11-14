/* This code makes a self-portrait of Hudson Chang! 
*/

// background setup
void setup(){
  size(500, 500);
  background(200, 240, 240);
}

// draws the face shape and color
void draw(){
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
  
  //nose
  fill(214,167,131);
  stroke(0,0,0);
  triangle(245, 230, 215, 270, 245, 300);
  
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
  noStroke();
  fill(247, 223, 206);
  triangle(150, 150, 150, 140, 160, 170);
  
  noStroke();
  fill(247, 223, 206);
  triangle(200, 150, 200, 135, 210, 170);
  
  noStroke();
  fill(247, 223, 206);
  triangle(300, 150, 300, 135, 310, 170);
  
}

  
