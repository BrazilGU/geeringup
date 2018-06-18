// Commented code includes the bouncing in both x and y directions. 

class Ball {
  int x; // x-pos
  int y; // y-pos
  int size; // Radius of ball
  int fallSpeed = 3; // how fast the ball moves
  //int xspeed = 1; // speed of ball in x coordinate
  //int yspeed = 3; // speed of ball in y coordinate 
  
  /**
  * Ball constructor
  **/ 
  Ball(int a, int b, int s) {
    this.x = a;
    this.y = b;
    this.size = s;
  }
  
  /**
  * Draw the ball onto the screen
  **/ 
  void show(){
    fill(255);
    ellipse(x,y, size, size);
  }
  
  /**
  * updates ball's position
  **/ 
  void fall(){
    //this.y = this.y + yspeed;
    //this.x = this.x + xspeed;
    this.y = this.y + fallSpeed;
    bounce();
  }
  
  /**
  * Ball bouncing implementation up and down
  **/ 
  void bounce(){
    if (this.y >= borderHeight){
      fallSpeed = -3;
    }
    if (this.y <= 0){
      fallSpeed = 3;
    }
  }
  
  /**
  * Ball bouncing implementation xy directionality
  **/ 
  //void bounce(){
  //  if (this.y >= borderHeight){
  //    yspeed = -3;
  //  }
  //  if (this.y <= 0){
  //    yspeed = 3;
  //  }
  //  if (this.x >= borderWidth){
  //    xspeed = -3;
  //  }
  //  if (this.x <= 0){
  //    xspeed = 3;
  //  }
  //}
}
