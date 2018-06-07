
  map m1;//declaring the objects so the scope is the whole class
  pacman p1;
  ghost g1;
  ghost g2;
  ghost g3;
  ghost g4;
  int speedx;
  int speedy;
  ArrayList <ghost> ghosts = new ArrayList<ghost>();
  boolean b = true;

  
public void setup() {//actually give the objects data so they can do their set actions 
  g1 = new ghost(300,450,"ghost.png");
  g2 = new ghost(300,57,"greenghost.png");
  g3 = new ghost(300,100, "pinky.png");
  g4 = new ghost(100,110, "blueghost2.png");
  ghosts.add(g1);
  ghosts.add(g2);
  ghosts.add(g3);
  ghosts.add(g4);
  p1 = new pacman(30,30,15,15,10);
  m1 = new map();
  speedx = 0;
  speedy = 0;
  

}
public void settings(){ //setting size of window, how big it should be
    size(500,500);
}

 public void draw() { //draw the pacman, ghosts and walls on the screen. They have already been given datat but nothing is displaying them so that is what the draw method does
   if( b == true){
  background(0);
  
  m1.createlayout();
  g1.display();
  g2.display();
  g3.display();
  g4.display();
  p1.display(speedx, speedy);
  checkCollisionPac();
  checkCollisionghost();
  for (ghost g: ghosts){  //check to see if pac touches ghosts and set b = to false when he does, forcing the code to move to the else statement and end game
  if(p1.getX()+8 >= g.getX() && p1.getX()-8 <= g.getX() + g.getW() && p1.getY()+8 >= g.getY() && p1.getY()-8 <= g.getY() + g.getW() ){
    b = false;
  }
  if(g.getX() <=12.5 && g.getDir() == 1.0){ //if reaches the leftmost wall or beyond, set direction to opposite way it is going
    g.setdir(3); 
    g.move();
  }
  else if(g.getX() >= width -12.5 && g.getDir() == 3.0){//if pac reaches the rightmost wall change to opposite direction
    g.setdir(1);
    g.move();
  }
  else if(g.getY() <= 12.5 && g.getDir() == 0.0){//if pac reaches topmost wall, change direction to opposite
    g.setdir(2);
    g.move();
  }
  else if( g.getY() >= height-12.5 && g.getDir() == 2.0){ //if pacman reaches bottomost wall do the same
    g.setdir(0);
    g.move();
   }
     }
       }
   
  else{ //ending the game if b = false
    clear();
    background(0);
    text("You lost! Better Luck next time.", height/2, width/2);
  }
  }
    
    public void checkCollisionPac(){//checks to see if pacman has touched walls and if it has, stop its motion so the user is forced to move him a different direction
    
    for(Wall w : m1.getWall()){
   if(p1.getX() + 8>= w.getX() && p1.getX() <= w.getX() + w.getW() && p1.getY() +8>= w.getY() && p1.getY() <= w.getY() + w.getH()){
     speedx = 0;
     speedy = 0;
      }  
    }
  }
  public void checkCollisionghost(){//if the ghosts touches a wall generate a random number i until it is not equal to the direction it is going now and move it accordingly
  //it is done this way because we can't just stop the ghost since it isn't controlled by the keys
    for (ghost g: ghosts){
      for(Wall w: m1.getWall()){
       if (g.getX() + g.getW() >= w.getX() && g.getX()  <= w.getX() + w.getW() && g.getY() + 20 >= w.getY() && g.getY() <= w.getY() + w.getH()){
        int i =(int) random(4);
        while(i==g.getDir()){
          i= (int)random(4);
        }
        g.setdir(i);
        g.move();
      }
    }
  }
}

void keyPressed() {
  checkCollisionPac();
  checkCollisionghost();
  
    if (keyCode == UP && p1.getY() >=0) {  //if user clicks up key and if pac moves to the up direction it won't be at the top bound of the screen, move pac that way
      speedx = 0;
      speedy = -2;
    } 
    else if (keyCode == DOWN && p1.getY() <=height) {//if user clicks down key and if pac moves to the down direction it won't be at the bottom bound of the screen, move pac that way
      speedy = 2;
      speedx = 0;
    }
    else if (keyCode == RIGHT && p1.getX()<=width){//if user clicks right key and if pac moves to the right direction it won't be at the right most bound, move pac that way
     speedy = 0;
     speedx = 2;
      
    }
    else if(keyCode == LEFT && p1.getX() >=0){//same as all others just for left side
      speedy = 0;
      speedx = -2;
      }
  
}
