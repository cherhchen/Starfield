//your code here
void setup()
{
	size(400,400);
}
void draw()
{
	background(0);
}
class Particle
{
	double myX,myY,mySpeed,myAngle;
	int myColor;
	Particle() 
	{
		myColor = color((int)(Math.random()*255),(int)(Math.random()*180),(int)(Math.random()*80)); 
		myAngle = Math.random()*(2*Math.PI);
		mySpeed = Math.random()*10;
		myX = 200;
		myY = 200;
	}
	void move()
	{
		myX = myX + Math.cos(myAngle)*mySpeed;
		myY = myY + Math.sin(myAngle)*mySpeed;
	}
	void show()
	{
		ellipse((float)myX,(float)myY,5,5);
	}

}

class OddballParticle //inherits from Particle
{
	//your code here
}


