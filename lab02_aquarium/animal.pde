class Animal {
  int cx, cy;
  color cc;
  int xspeed, yspeed;
  int xw, yw;
  Animal(int xx, int yy) {
   cx = xx;
   cy = yy;
   cc = #ff00f7;
   xspeed = yspeed = 1;
   xw = 40;
   yw = 20;
   int xd = rand(2);
   int yd = rand(2);
   if (xd == 0) {
    xspeed = 1; 
   }
   else {xspeed=-1;}
   if (yd == 0) {
     yspeed = 1; 
   }
   else {yspeed=-1;}
   yw = 20;
  }
  Animal() {
   
  }
  
  void display() {
    fill(cc);
    noStroke();
    rect(cx, cy, xw, yw);
  }
  void move() {
    if (cx+xw>tankX+tankW || cx <= tankX) {
        xspeed*= -1;
     }
     if (cy+yw >= tankY + tankH - floorH  || cy <= tankY) {
         yspeed*= -1;
      }
     cx+= xspeed;
     cy+= yspeed;
  }
  int rand(int x){
   return int(random(x)); 
  }
}
