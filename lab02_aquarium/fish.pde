class Fish extends Animal{ //My animal
  Fish(int xpos, int ypos){
    super(xpos,ypos);
    cc=color(255,150,0);
  }
  
  void move(){
    cx += xspeed; //moves in a sine wave
    cy += yspeed * sin(radians(frameCount));
    if (lifespan > 0) {
    if(cx + xw > tankX + tankW && xspeed > 0){
      xspeed *= -1;
      cx = tankX + tankW;
    }
    if(cx - xw < tankX && xspeed < 0){
      xspeed *= -1;
      cx = tankX;
    }
    if(cy + yw > tankY + tankH - floorH){
      yspeed *= -1;
      cy = tankY + tankH - floorH - yw;
    }
    if(cy < tankY){
      yspeed *= -1;
      cy = tankY;
    }
 lifespan--;
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
}}
