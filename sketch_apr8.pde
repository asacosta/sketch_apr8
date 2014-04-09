
Ob Ob1;
Ob Ob2;
Ob Ob3;
Ob Ob4;
Ob Ob5;
Ob Ob6;


void setup() {
  size(600,120);
  background(255);
  Ob1 = new Ob(color(255,0,0),0,10,1);
  Ob2 = new Ob(color(255,179,0),0,30,1);
  Ob3 = new Ob(color(255,255,0),0,50,1);
 Ob4 = new Ob(color(0,255,0),0,70,1);
  Ob5 = new Ob(color(0,0,255),0,90,1);
  Ob6 = new Ob(color(188,0,255),0,110,1);
}
void draw()  {    

  Ob1.drive();   
  Ob1.display();     
  Ob2.drive();   
  Ob2.display();  
  Ob3.drive();   
  Ob3.display();
   Ob4.drive();   
  Ob4.display();
   Ob5.drive();   
  Ob5.display(); 
    Ob6.drive();   
  Ob6.display();  

}

class Ob {
  color c;
  float xpos;
  float ypos;
  float xspeed;
  Ob(color tempC, float tempXpos, float tempYpos, float tempXspeed) { 
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
  }
  void display() {
    noStroke();
    fill(c);
    rectMode(CENTER);
    rect(xpos,ypos,30,20);
  }
  void drive() {
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = 0;
    }
  }
}

