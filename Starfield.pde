//NormalParticle[] aBunch = new NormalParticle;
Particle[] aBunch = new Particle[500];
void setup()
{
	size(600,600);
	for (int i = 0; i < aBunch.length(); i++)
	{
		aBunch[i] = new Particle();
	}

		

}
void draw()
{
	background(0);
}
class NormalParticle
{
	
	
}
interface Particle
{

}
class OddballParticle //uses an interface
{
	int myX, myY;
	double num, star;
	fill(255,0,0);

}
class JumboParticle //uses inheritance
{
	//your code here
}

