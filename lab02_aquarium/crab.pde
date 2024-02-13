class crab extends Animal {
  crab(int xx, int yy) {
   super(xx, yy); 
   cc=color(255, 0,0);
   cy = tankY + tankH - floorH - yw;
   
   
  }
  void move() {
    if (frameCount%2==0){
    if (cx+xw>tankX+tankW || cx <= tankX) {
        xspeed*= -1;
     }
     cx+= xspeed;
  }
  }
}
