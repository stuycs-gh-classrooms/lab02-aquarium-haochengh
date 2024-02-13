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
  }
  
  void display() {
    //xywh
   
      fill(250, 200, 50);
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
    
  
  void move(){
    if (cx >= width - xw/2 ||
        cx <= xw/2) {
        xspeed*= -1;
     }
     if (cy >= height - floorH -yw/2||
         cy <= tankY + yw/2 ) {
         yspeed*= -1;
  }
  cx += xspeed;
  cy += yspeed;
}
}
