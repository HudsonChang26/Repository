start

/* 
This code creates an origami boat!
*/

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
  func flipOver();
}
;
func openTheHat();
func checkDiamond();

for 2 times {
  func triangleBottomsUp();
  func flipOver();
}
;

func openTheTriangle();
  
func formBoat();
}
end
