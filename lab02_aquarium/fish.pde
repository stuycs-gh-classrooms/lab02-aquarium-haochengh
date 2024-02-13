class Fish extends Animal{ //My animal
  Fish(int xpos, int ypos){
    super(xpos,ypos);
  }
  void display(){
    pushMatrix();
    float xScaleFactor; //multiplies x and y offsets so the fish can still fit in the width and height
    float yScaleFactor;
    xScaleFactor = float(xw)/75;
    yScaleFactor = float(yw)/35;
    stroke(255);
    fill(255,150,0);
    translate(cx,cy);
    if(xspeed < 0){
      scale(-1,1);
    }
      beginShape();
      vertex(0,5*yScaleFactor);
      vertex(0,30*yScaleFactor);
      vertex(25*xScaleFactor,18*yScaleFactor);
      vertex(30*xScaleFactor,30*yScaleFactor);
      vertex(45*xScaleFactor,35*yScaleFactor);
      vertex(60*xScaleFactor,30*yScaleFactor);
      vertex(75*xScaleFactor,22*yScaleFactor);
      vertex(65*xScaleFactor,18*yScaleFactor);
      vertex(75*xScaleFactor,17*yScaleFactor);
      vertex(60*xScaleFactor,5*yScaleFactor);
      vertex(45*xScaleFactor,0);
      vertex(30*xScaleFactor,5*yScaleFactor);
      vertex(25*xScaleFactor,17*yScaleFactor);
      endShape(CLOSE);
      popMatrix();
  }
  void move(){
    cx += xspeed; //moves in a sine wave
    cy += yspeed * sin(radians(frameCount));
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
  }
}
