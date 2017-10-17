//NormalParticle[] aBunch = new NormalParticle;
Particle[] aBunch = new Particle[500];
void setup()
{
	size(600,600);
	for (int i = 0; i < aBunch.length; i++)
	{
		aBunch[i] = new Normal();
	}
  aBunch[0] = new JumboParticle();
  aBunch[2] = new OddballParticle();
  

}
void draw()
{
	background(0);
  for (int i = 0; i < aBunch.length; i++)
  {
	aBunch[i].move();
	aBunch[i].show();
  }
  
  
}

class Normal implements Particle
{
	double myX, myY, mySpeed, myDir;
  int myColor, myOpac;
  Normal()
  {
	myX = 250;
	myY = 250;
	mySpeed = Math.random()*10;
	myDir = Math.random()*2*Math.PI;
	myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  public void move()
  {
	myX += mySpeed *Math.cos(myDir);
	myY += mySpeed *Math.sin(myDir);
	if (((myX > 600) || (myX < 0))|| ((myY > 600) || (myY<0)))
   	{
   		myX = (Math.random()*450)+50;
		myY = (Math.random()*450)+50;
		mySpeed = Math.random()*10;
		myDir = Math.random()*2*Math.PI;
		myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
   	}
   
  }
  public void show()
  {
	fill(myColor);
	ellipse((float)myX,(float)myY, 10,10);
	
	}

}
interface Particle
{
  public void move();
  public void show();

}
class OddballParticle implements Particle  //uses an interface
{
	double myX, myY,mySpeed, myDir;
	int myColor;
	OddballParticle()
	{
		myX = 250;
		myY = 250;
		myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
		mySpeed = (Math.random()*10);
	}
	public void move()
	{
		myX += mySpeed *Math.cos(myDir);
		myY += mySpeed *Math.sin(myDir);
		if ((myX > 600) || (myY > 600))
   	{
   		myX = 250;
   		myY = 250;
   		myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
		mySpeed = (Math.random()*10);
   	}

	}
	public void show()
	{
		fill(myColor);
		rect((int)myX,(int)myY,50,50);
	}
	
}
class JumboParticle extends Normal//uses inheritance
{
	public void show()
  {
	fill(myColor);
	ellipse((float)myX,(float)myY, 50 , 50);
  }
  	
}


