Particle [] bob;
void setup()
{
  size(500, 500);
  bob = new Particle[500];
  for (int i = 0; i < bob.length - 1; i++) {
    bob[i] = new Particle();
  }
  bob[bob.length - 1] = new OddParticle();
}
void draw()
{
  background(0);
  for (int i = 0; i < bob.length; i++) {
    bob[i].move();
    bob[i].show();
  }  
}

class Particle
{
  double myX, myY, mySpd, myAng;
  int myCol, mySz;
  Particle() {
      myX = width/2;
      myY = height/2;
      mySpd = Math.random()*10;
      myAng = Math.random()*2*Math.PI;
      mySz = 10;
      myCol = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  void move() {
      myX += Math.cos(myAng) * mySpd;
      myY += Math.sin(myAng) * mySpd;
  }
  void show() {
    fill(myCol);
    ellipse((int)(myX), (int)(myY), mySz, mySz);
  }
}

class OddParticle extends Particle //inherits from Particle
{
  OddParticle() {
      myX = width/2;
      myY = height/2;
      mySpd = Math.random()*10;
      myAng = Math.random()*2*Math.PI;
      myCol = color(255, 255, 255);
      mySz = 50;
  }
}


