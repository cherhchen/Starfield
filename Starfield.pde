Particle[] boom;
boolean shot = false;
void setup()
{
	size(600,600);
	boom = new Particle[500];
	for (int i = 0; i < boom.length; i++) {
		boom[i] = new Particle();
	}
}
void draw()
{
	background(0);
	if (shot == true) {
		for (int i = 0; i < boom.length; i++) {
			boom[i].show();
			boom[i].move();
		}
	}
	else {
		strokeWeight(4);
		fill(150, 146, 135);
		ellipse(300,200,300,300);
		curve(150, 180, 150, 180, 450 , 230, 450, 180);
	}
}
void mousePressed()
{
}
class Particle
{
	double myX,myY,mySpeed,myAngle;
	int myColor,mySize;
	Particle() 
	{
		myColor = color((int)(Math.random()*255)+200,(int)(Math.random()*180),(int)(Math.random()*80)); 
		myAngle = Math.random()*(2*Math.PI);
		mySpeed = Math.random()*5;
		myX = 300;
		myY = 200;
		mySize = (int)(Math.random()*30)+5;
	}
	void move()
	{
		myX = myX + Math.cos(myAngle)*mySpeed;
		myY = myY + Math.sin(myAngle)*mySpeed;
	}
	void show()
	{
		noStroke();
		fill(myColor);
		ellipse((float)myX,(float)myY,mySize,mySize);
	}

}

class OddballParticle //inherits from Particle
{
	//your code here
}


