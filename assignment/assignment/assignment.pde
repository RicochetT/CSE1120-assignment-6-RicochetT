// Simple animation demo
//
// Author: Dr. Pineda, Edited by Maksut
// Date December 6, 2016

int x, y; // Coordinates of object
int s = 25; // Side length of Circle
int direction; // Positive direction = going down; negative direction = going up

void setup() {
  size(400,200);
  
  direction = 1;  // Start by going up
  
  // Calculate the initial coordinates (centered)
  x = width/2; 
  y = height/2;
}

void draw() {
  background(200,200,200);
  ellipseMode(CENTER);
  ellipse(x, y, s, s);
  x = x + direction;
  
  // Determine if it is time to turn around
  if (x>width-s/2) { // The -s/2 is the edge detector
    direction = -1;
  } else if (x<0+s/2) { // Edge detector
    direction = 1;
  }
  
}