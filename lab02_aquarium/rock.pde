class rock extends Animal {
 rock(int xx, int yy) {
  super(xx, yy);
  yspeed = 2; 
  cc = #636363;
  eating=false;
 }
 void display() {
  fill(cc);
  rect(cx, cy, xw,yw);
 }
 void move() {
    if (cx+xw>tankX+tankW || cx <= tankX) {
        xspeed*= -1;
     }
     if (cy+yw >= tankY + tankH - floorH) {
         yspeed*= 0;
         xspeed = 0;
      }
     cx+= xspeed;
     cy+= yspeed;
  }
}
