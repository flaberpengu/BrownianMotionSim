class Particle{
  float xPos;
  float yPos;
  Particle(float width, float height){
   xPos = width / 2;
   yPos = height / 2;
  }
  void move(){
    int direction = (int)random(4);
    switch (direction){
      case 0:
        yPos += 2;
        break;
      case 1:
        xPos += 2;
        break;
      case 2:
        yPos -= 2;
        break;
      case 3:
        xPos -= 2;
        break;
    }
  }
  float getxPos(){
    return xPos;
  }
  float getyPos(){
    return yPos;
  }
}
