class Goldfish extends Animal { //Richie's animals
  int cx;
  int cy;
  float fsize;
  float ratio;
  Goldfish(int x, int y) {
    super(x, y);
    xw = int(random(15,100));
    yw = int(random(10,100));
    cx = x + xw/2;
    cy = y + yw/2;
    xspeed = int(random(1,2) * int(pow(-1,int(random(0,2)))));
    yspeed = int(random(1,2) * int(pow(-1,int(random(0,2)))));
    //t.addAnimal(this);
    fsize = xw * yw * PI;
    ratio = float(yw)/float(xw);
    cc = color(250, 200, 50);
  }
  
  void display() {
    //xywh
   if (corpselife > 0) {
      fill(cc);
      ellipse(cx, cy, xw, yw);
      if (xspeed <= 0) {
        triangle(cx + xw/2, cy, cx + xw, cy + yw/2, cx + xw, cy - yw/2);
        fill(#000000);
        circle(cx - xw /4, cy - yw/5, sqrt(log(fsize)));
      }
      else if (xspeed>0) {
        triangle(cx - xw/2, cy, cx - xw, cy + yw/2, cx - xw, cy - yw/2);
        fill(#000000);
        circle(cx + xw /4, cy - yw/5, sqrt(log(fsize)));
      }
   }
      else {
       t.animals.remove(t.animals.indexOf(this)); 
      }
    }
    
  
  void move(){
    if (lifespan > 0) {
    if (cx >= width - xw/2 ||
        cx <= xw/2) {
        xspeed*= -1;
     }
     if (cy >= height - floorH -yw||
         cy <= tankY + yw ) {
         yspeed*= -1;
  }
  cx += xspeed;
  cy += yspeed;
    lifespan--;}
  
  else if (lifespan == 0) {
     cc = color(#363534);
     yspeed = 2;
     xspeed=0;
     if (cx+xw>tankX+tankW || cx <= tankX) {
        xspeed*= -1;
     }
     if (cy+yw >= tankY + tankH - floorH) {
         yspeed = 0;
         xspeed=0;
      }
      cx+= xspeed;
      cy+= yspeed;
      corpselife--;
  }
}}
