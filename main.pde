//Declarations
Particle[] particles;
boolean firstDraw = true;
int numParticles = 50;
  
void setup(){
  size(400,400,P2D);
  frameRate(30);
  particles = new Particle[numParticles];
  for (int i = 0; i < numParticles; i++){
    particles[i] = new Particle(400, 400);
  }
}

void draw(){
  if (!firstDraw){
    for (int i = 0; i < numParticles; i++){
      particles[i].move();
    }
  }
  background(#ffffff);
  fill(#000000);
  for (int i = 0; i < numParticles; i++){
    circle(particles[i].getxPos(), particles[i].getyPos(), 5);
  }
  if (firstDraw){
    firstDraw = false;
  }
}
