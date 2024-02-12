class Tank {
  PVector corner;
  int wid;
  int hei;
  int fh;
  ArrayList<Animal> animals;
  
  Tank(int x, int y, int w, int h, int floor) {
   corner = new PVector(x, y); 
   wid = w;
   hei = h;
   fh = floor;
   animals = new ArrayList<Animal>();
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
     int pick = int(random(3));
     if (pick==0) 
    animals.add(new Animal(x,y));
    else if (pick == 1) 
    animals.add(new crab(x,y));
   else if (pick == 2) 
    animals.add(new rock(x,y));
   }
   void moveAnimals() {
     for (int i=0;i<animals.size();i++) {
       animals.get(i).move();
     }
   }
}
