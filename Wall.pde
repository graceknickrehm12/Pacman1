class Wall{
  float xpos;//fields
  float ypos; 
  int c;
  float width1;
  float height1;
  
   Wall(float xpos, float ypos, float width1, float height1){//constructs a wall based on it's x position, y position, widht, and height. also gives it a color
    this.xpos = xpos;
    this.ypos = ypos;
    c =  color(22,27,245); 
    this.width1 = width1;
    this.height1 = height1;
  }
  public void display(){//actually displays wall on the screen so the user can see it, also creates the rectangle using the already initialized field variables
   stroke(c);
    fill(29,54,206);
    rect(xpos, ypos, width1, height1);
  }
  
  public float getX(){//getter methods so other classes can access characteristics of the wall
    return xpos;
  }
  public float getY(){
    return ypos;
  } 
  public float getW(){
    return width1;
  }
  public float getH(){
    return height1;
  }
}
