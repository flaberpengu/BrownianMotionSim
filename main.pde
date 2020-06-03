//Declarations
Particle particle = new Particle(400, 400);
boolean firstDraw = true;
  
void setup(){
  size(400,400,P2D);
  frameRate(30);
}

void draw(){
  if (!firstDraw){
    particle.move();
  }
  background(#ffffff);
  fill(#000000);
  circle(particle.getxPos(), particle.getyPos(), 5);
  if (firstDraw){
    firstDraw = false;
  }
}
