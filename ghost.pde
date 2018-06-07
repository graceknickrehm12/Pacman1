class ghost{
  PImage img;  //fields
  float xpos;
  float ypos;
  float speed = 1;
  int dir; //direction of ghost
    ghost(float xpos, float ypos, String image){//constructs a ghost based on the image imported and the starting x and y position
      img = loadImage(image);
              dir = (int)(random(4));
              this.xpos = xpos;
              this.ypos = ypos;
     }

   public void display() {//displays ghost on the screen 
  
  image(img,xpos,ypos, 20,20);
  xpos += speed;
  ypos += speed;
  move();  
   }
    
    public void move(){//moves the ghost based on variable dir, which tells the direction it is going and is generated randomly
    
         if(dir==0){ //up
        ypos-=speed;
      }
      else if(dir==2){//down
        ypos += speed;
      }
      else if(dir == 1){//left
        xpos -= speed;
      }
      else if(dir == 3){//right
        xpos += speed;
      }     
}
   public float getDir(){//gets the current direction of the pacman
    return dir;
    }
   public void setdir(int i){//sets dir if it needs to be changed
      dir = i;
    }
    
    public float getX(){//gets the X and Y position of ghost
      return xpos;
    }
     public float getY(){
      return ypos;
    }
    public float getW(){
      return 20;
    }
}
