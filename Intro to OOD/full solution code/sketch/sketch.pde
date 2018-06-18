Ball b;
int borderWidth = 400; // canvas width
int borderHeight = 400;// canvas height

/**
* pre loaded data
**/ 
void settings(){
  size(borderWidth, borderHeight);
}

/**
* Runs once before draw() to setup the canvas
**/ 
void setup(){
  b = new Ball(50, 50, 50);
}

/**
* Runs on a loop repeating calls inside the method.
**/ 
void draw(){
 background(0);
 b.fall();
 b.show();

}
