class pacman {
  float circx;
  float circy;
  float width1;
  float height1;
  float speed;
  float lives;
  int c;
  
  boolean isAlive;
    pacman(float circx, float circy, float width1, float height1, float speed){//constructs a pacman based on starting position, width, height, and speed

   this.circx = circx;
   this.circy = circy;
   this. width1 = width1;
   this.height1 = height1; 
   this.lives = lives;
   this.speed = speed;
   c = color(255, 204, 0);
   isAlive = true;
    }
   
    public void display(int speedx, int speedy){//displays the pacman on the screen so the user can see it, sets the bacground to black and has it move based on speed of the x and y position
    fill(c);  
    noStroke();  
    ellipseMode(CENTER); 
    circx += speedx;
    circy += speedy;
    ellipse(circx, circy, width1, height1);

    } 
    
    public float getX(){//get X and Y of pacman position
     return circx;
   }
    public float getY(){
     return circy;
   } 
   
   public void setX(float num){ //setter methods to change position of pacman 
     circx += num;
   }
   public void setY(float num){
     circy += num;
   }
   
}
