
start

/* 
This code creates an origami boat!
*/

define setup(){
  if colored boat is desired {
    Grab a colored sheet of paper
    // the back side will form the outer shell 
    // the front side will form the inner sail 
  } 
  else {
    Grab a normal 8x11 sheet of paper
  } 
}

define initialOrientation(){
  Start in portrait position with the back side face up
}
  
    
define mountainFold(){
  Fold the top edge down to the bottom edge
  Crease
}


define rotate(){
  Rotate the paper to the right clockwise
}

define unfold(){
  Unfold the previous step
}

define cornerFold(){
  Fold the top right corner down
  Continue until it meets the middle reference line
  Crease
}

define switchSides(){
  Move to the other side
  
define rectangleBottomsUp(){
  Take the top rectangular layer at the bottom
  Fold it up past the triangles 
  Continue until you can go no further
  Crease
}

define flip(){
  Flip from right to left to the other side
}

define openTheHat(){
  Find the bottom of the "hat"
  Find the opening
  Open it up 
  Squash the sides together
  Flatten and crease to form diamond shape
}

define checkDiamond(){
  Confirm triangle flaps on the bottom
}

define triangleBottomsUp(){
  Take the top triangular layer at the bottom  
  Fold it up
  Match it with the upper triangle 
  Crease
}

define openTheTriangle(){
  Find the bottom the triangle
  Find the opening
  Open it up
  Squash the sides together
  Flatten and crease to form diamond shape 
  Keep opening on the bottom
}

define formBoat(){
  Find loose ends at the top 
  Pull loose ends apart
  Continue until upside down trapezoid is reached
}

{
func setup();
func initialOrientation();
func mountainFold();
func rotate();
func mountainFold();
func unfold();
// In this case, only applicable to the mountain fold
for 3 times {
  func rotate() 
}
;

for 2 times {
  func cornerFold();
  func switchSides();
  // in this case, move to the top left corner
}
;

for 2 times { 
  func rectangleBottomsUp();
  func flip();
}
;
func openTheHat();
func checkDiamond();

for 2 times {
  func triangleBottomsUp();
  func flip();
}
;

func openTheTriangle();
  
func formBoat();
}
end
