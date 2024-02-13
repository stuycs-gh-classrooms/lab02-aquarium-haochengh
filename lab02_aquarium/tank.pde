class Tank {
  PVector corner;
  int wid;
  int hei;
  int fh;
  int pick;
  ArrayList<Animal> animals;
  
  Tank(int x, int y, int w, int h, int floor) {
   corner = new PVector(x, y); 
   wid = w;
   hei = h;
   fh = floor;
   animals = new ArrayList<Animal>();
   pick = -1;
  }
  
  void display() {
   fill(#03f4fc);
   rect(corner.x,corner.y,wid,hei);
   fill(#918f69);
   rect(corner.x,height-fh,wid,fh);
   for (int i=0;i<animals.size();i++) {
       animals.get(i).display();
     }
  }
   void addAnimal(int x, int y) {
     if (pick==-1) {
       pick = int(random(6));
     }
     if (pick==0) 
    animals.add(new Animal(x,y));
    else if (pick == 1) 
    animals.add(new crab(x,y));
   else if (pick == 2) 
    animals.add(new rock(x,y));
   else if (pick == 3) 
    animals.add(new Fish(x,y));
   else if (pick == 4) 
    animals.add(new Goldfish(x,y));
   else if (pick == 5) 
    animals.add(new FishFood(x,y));
   }
   void moveAnimals() {
     for (int i=0;i<animals.size();i++) {
       animals.get(i).move();
     }
   }
}
