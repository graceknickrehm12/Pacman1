 class map{
  ArrayList <Wall> walls = new ArrayList<Wall>();//creates an arraylist of each wall so we can efficiently check each wall for certain things
  map(){ //default constructor
    
  }
      public void createlayout(){//creates walls by giving them a position, width, and height. Then adds them to the arraylist
    
    Wall w1 = new Wall(250,200,200,20);
    w1.display();
    walls.add(w1);
    Wall w2 = new Wall(100,200,15,250);
    w2.display();
    walls.add(w2);
    Wall w3 = new Wall(200,20,13,250);
    w3.display();
    walls.add(w3);
    Wall w4 = new Wall(200, 300, 120,17);
    w4.display();
    walls.add(w4);
    Wall w5 = new Wall(50,60,100,12);
    w5.display();
    walls.add(w5);
    Wall w6 = new Wall(85,72,12,75);
    w6.display();
    walls.add(w6);
    Wall w7 = new Wall(0,0,12.5,height); 
    w7.display();
     //walls.add(w7);
    Wall w8 = new Wall(0,height-12.5,width,12.5);
    w8.display();
     //walls.add(w8);
    Wall w9 = new Wall(width -12.5,0,12.5,height);
    //walls.add(w9);
    w9.display();
    Wall w10 = new Wall(0,0,width,12.5);
    //walls.add(w10);
    w10.display();
    Wall w11 = new Wall(210,400, 250, 16);
     walls.add(w11);
    w11.display();
   }
   public ArrayList<Wall> getWall(){//get arraylist walls if you need it from another class
    return walls;
   }
       
     
}
 
     
