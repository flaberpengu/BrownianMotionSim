class Particle{
  float xPos;
  float yPos;
  Particle(float width, float height){
   xPos = random(width);
   yPos = random(height);
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
    if (xPos > 400){
      xPos = 400;
    }
    else if (xPos < 0){
      xPos = 0;
    }
    if (yPos > 400){
      yPos = 400;
    }
    else if (yPos < 0){
      yPos = 0;
    }
  }
  float getxPos(){
    return xPos;
  }
  float getyPos(){
    return yPos;
  }
}
