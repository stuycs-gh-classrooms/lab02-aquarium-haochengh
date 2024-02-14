class crab extends Animal {
  crab(int xx, int yy) {
   super(xx, yy); 
   cc=color(255, 0,0);
   cy = tankY + tankH - floorH - yw;
   
   
  }
  void display(){
  float xScaleFactor = float(xw)/170;
  float yScaleFactor = float(yw)/140;
  fill(255,0,0);
  pushMatrix();
  if (corpselife > 0) {
  translate(cx,cy);
  beginShape();
  vertex(15*xScaleFactor,80*yScaleFactor);
  vertex(15*xScaleFactor,60*yScaleFactor);
  vertex(10*xScaleFactor,60*yScaleFactor);
  vertex(0*xScaleFactor,30*yScaleFactor);
  vertex(10*xScaleFactor,13*yScaleFactor);
  vertex(18*xScaleFactor,0*yScaleFactor);
  vertex(18*xScaleFactor,53*yScaleFactor);
  vertex(23*xScaleFactor,53*yScaleFactor);
  vertex(23*xScaleFactor,0*yScaleFactor);
  vertex(33*xScaleFactor,13*yScaleFactor);
  vertex(41*xScaleFactor,30*yScaleFactor);
  vertex(31*xScaleFactor,60*yScaleFactor);
  vertex(26*xScaleFactor,60*yScaleFactor);
  vertex(35*xScaleFactor,80*yScaleFactor);
  vertex(60*xScaleFactor,60*yScaleFactor);
  vertex(110*xScaleFactor,60*yScaleFactor);
  vertex(135*xScaleFactor,80*yScaleFactor);
  vertex(144*xScaleFactor,60*yScaleFactor);
  vertex(139*xScaleFactor,60*yScaleFactor);
  vertex(129*xScaleFactor,30*yScaleFactor);
  vertex(137*xScaleFactor,13*yScaleFactor);
  vertex(147*xScaleFactor,0*yScaleFactor);
  vertex(147*xScaleFactor,53*yScaleFactor);
  vertex(152*xScaleFactor,53*yScaleFactor);
  vertex(152*xScaleFactor,0*yScaleFactor);
  vertex(160*xScaleFactor,13*yScaleFactor);
  vertex(170*xScaleFactor,30*yScaleFactor);
  vertex(160*xScaleFactor,60*yScaleFactor);
  vertex(155*xScaleFactor,60*yScaleFactor);
  vertex(155*xScaleFactor,80*yScaleFactor);
  vertex(135*xScaleFactor,120*yScaleFactor);
  vertex(110*xScaleFactor,140*yScaleFactor);
  vertex(60*xScaleFactor,140*yScaleFactor);
  vertex(35*xScaleFactor,120*yScaleFactor);
  endShape(CLOSE);}
  else{
      fill(150);
      rect(cx,cy,xw,yw);}
  popMatrix();
  }
  void move() {
    if (lifespan > 0) {
    if (frameCount%2==0){
    if (cx+xw>tankX+tankW || cx <= tankX) {
        xspeed*= -1;
     }
     cx+= xspeed;
     lifespan--;
  }
    }
    else if (lifespan == 0) {
     cc = color(#363534);
     yspeed = 2;
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
  }
}
