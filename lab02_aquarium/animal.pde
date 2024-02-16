class Animal {
  int cx, cy;
  color cc;
  int xspeed, yspeed;
  int xw, yw;
  int lifespan; 
  int corpselife;
  boolean eating;
  Animal(int xx, int yy) {
   cx = xx;
   cy = yy;
   cc = #ff00f7;
   eating=true;
   xspeed = yspeed = 1;
   xw = 40;
   yw = 20;
   lifespan = 400;
   corpselife=200;
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
    float xScaleFactor; //multiplies x and y offsets so the fish can still fit in the width and height
    float yScaleFactor;
    xScaleFactor = float(xw)/75;
    yScaleFactor = float(yw)/35;
    pushMatrix();  
    stroke(255);
    translate(cx,cy);
    if( xspeed < 0){
      scale(-1,1);
    }
    if (corpselife > 0) {
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
      }
      else{
      t.animals.remove(t.animals.indexOf(this));
  }
      
      popMatrix();
  }
  
  void move() {
   if (lifespan > 0) {
    if (cx+xw>tankX+tankW || cx <= tankX) {
        xspeed*= -1;
     }
     if (cy+yw >= tankY + tankH - floorH  || cy <= tankY) {
         yspeed*= -1;
      }
     cx+= xspeed;
     cy+= yspeed;
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
  }
  int rand(int x){
   return int(random(x)); 
  }
  
  FishFood closestFood(){
    FishFood minFood = null;
    float minDist = 0;
    if (eating) {
    for(int i = 0; i < t.animals.size(); i++){
      Animal currentAnimal = t.animals.get(i);
      if(currentAnimal instanceof FishFood){
        if(minFood == null){
          minFood = (FishFood) currentAnimal;
          minDist = dist(minFood.cx,minFood.cy,this.cx,this.cy);
        }
        if(dist(currentAnimal.cx,currentAnimal.cy,this.cx,this.cy) < minDist){
          minFood = (FishFood) currentAnimal;
          minDist = dist(minFood.cx,minFood.cy,this.cx,this.cy);
        }
      }
    
    }}
    return minFood;
    
  }
  void eat(FishFood food) {
    if (eating) {
   if ((cx <= food.cx + food.xw && cx+food.xw>=food.cx) && (cy <= food.cy + food.yw) && (cy + yw >= food.cy)) {
     t.animals.remove(food);
     lifespan += 100;
  }
    }
}
}

  
