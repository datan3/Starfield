Particle[] rainbow;

void setup()
{
  
  size(200, 200);
  
  rainbow = new Particle[1000];
  for(int i = 0; i<rainbow.length; i++){
  
rainbow[0] = new OddballParticle(200, 200);
rainbow[i] = new NormalParticle();
rainbow[1] = new JumboParticle();
rainbow[2]= new JumboParticle();
rainbow[3] = new JumboParticle();
}
}

  
void draw()
{
  background(255);
  for(int i = 0; i<rainbow.length; i++){
  rainbow[i].show();
  rainbow[i].move();

}
}
class NormalParticle implements Particle
{
  double myX;
  double myY;
  int dSpeed;
  double dAngle;
  int myColor;

  NormalParticle()
  
  {
    myX = 100;
    myY= 100;
    dSpeed = (int)(Math.random()*10);
    dAngle = (Math.random()*(2*Math.PI));
    myColor = color((int)(Math.random()*200), 0, (int)(Math.random()*50),150);

  }

     public void move()
    {
      if(frameCount%4==0){
      myX = myX + Math.cos(dAngle)*dSpeed;
      myY = myY + Math.sin(dAngle)*dSpeed;
    }
    }

    public void show()
    {
      noStroke();
      fill(myColor);
      ellipse((float)myX, (float)myY, 5, 5);
    }

  
}
interface Particle
{
  public void show();
  public void move();
}
class OddballParticle implements Particle 
{
  double myX;
  double myY;
  int dSpeed;
  double dAngle;
  int myColor;

  OddballParticle(int x, int y )
  
  {
    myX = x;
    myY= y;
    dSpeed = (int)Math.random()*10;
    dAngle = (double)Math.random()*(2*Math.PI);
    myColor = color((int)(Math.random()*150), 250, (int)(Math.random()*150));

  }

    public void move()
    {
      if(frameCount%4==0){
      myX = myX + Math.cos(dAngle)*dSpeed;
      myY = myY + Math.sin(dAngle)*dSpeed;
}
    }

    public void show()   
    {
      fill((int)(Math.random()*150), 250, (int)(Math.random()*150));
    }
}
class JumboParticle extends NormalParticle
{
  public void show()
  {
     fill(300, (int)(Math.random()*300), 200);
    ellipse((float)myX, (float)myY, 10,10);
  } 
}

void mousePressed()
{
  redraw();
}
