
Start

function setup {
  Grab an 8x11 sheet of paper 
  If colored boat is desired {
    Grab a colored sheet of paper
    // the back side will form the outer shell 
    // the front side will form the inner sail 
  } 
  else {
    Grab an 8x11 sheet of paper
  } 
}

function initial orientation {
  Start in portrait position with the back side face up
}
  
    
function Mountain Fold { 
  Fold the top edge down to the bottom edge
  Crease
}


function rotate {
  Rotate the paper to the right clockwise
}

function unfold {
  Unfold the previous step
}

function corner fold {
  Fold the top right corner down
  Continue until it meets the middle reference line
  Crease
}

function switch sides {
  Move to the other side
  
function rectangle bottoms up {
  Take the top rectangular layer at the bottom
  Fold it up past the triangles 
  Continue until you can go no further
  Crease
}

function flip {
  Flip from right to left to the other side
}

function open the hat {
  Find the bottom of the "hat"
  Find the opening
  Open it up 
  Squash the sides together
  Flatten and crease to form diamond shape
}

Function check diamond {
  Confirm triangle flaps on the bottom
}

function triangle bottoms up {
  Take the top triangular layer at the bottom  
  Fold it up
  Match it with the upper triangle 
  Crease
  
function open the triangle {
  Find the bottom the triangle
  Find the opening
  Open it up
  Squash the sides together
  Flatten and crease to form diamond shape 
  Keep opening on the bottom
}

function form boat {
  Find loose ends at the top 
  Pull loose ends apart
  Continue until upside down trapezoid is reached
}

setup
Initial orientation
Mountain Fold 
rotate
Mountain Fold
unfold
// In this case, only applicable to the mountain fold
rotate 3 times 

for 2 times {
  corner fold 
  switch sides 
  // in this case, move to the top left corner
}

for 2 times { 
  rectangle bottoms up
  flip 

open the hat
check diamond

for 2 times {
  triangle bottoms up 
  flip
}

open the triangle
  
form boat
