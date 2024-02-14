Tank t;
int tankX = 0;
int tankY = 50;
int floorH = 100;
int tankW;
int tankH;


void setup() {
  size(600, 600);
  tankW = width;
  tankH = height - 50;
  t = new Tank(tankX, tankY, tankW, tankH, floorH);
  t.display();
}//setup


void draw() {
  background(150);
  t.moveAnimals();
  t.display();
}

void mouseClicked() {
  t.pick = int(random(6));
 t.addAnimal(mouseX, mouseY);
}

void keyPressed() {
 if (key == '1') {
   t.pick=0;
   t.addAnimal(mouseX, mouseY);
 }if (key == '2') {
   t.pick=1;
   t.addAnimal(mouseX, mouseY);
 }if (key == '3') {
   t.pick=2;
   t.addAnimal(mouseX, mouseY);
 }if (key == '4') {
   t.pick=3;
   t.addAnimal(mouseX, mouseY);
 }if (key == '5') {
   t.pick=4;
   t.addAnimal(mouseX, mouseY);
 }if (key == '6') {
   t.pick=5;
   t.addAnimal(mouseX, mouseY);
 }
}
