Particle[] boom;
boolean shot = false;
int laserY = 600;
boolean laserShot = false;
boolean canSee = true;
void setup()
{
	size(600,600);
	boom = new Particle[1000];
	for (int i = 0; i < boom.length; i++) {
		boom[i] = new Particle();
		boom[0] = new OddballParticle();
		boom[1] = new OddballParticle();
	}
}
void draw()
{
	background(0);
	if (canSee == true) {
		fill(61, 191, 191);
		rect(300,laserY,7,100,5);
	}
	if (laserShot == true) {
		laserY-=5;
	}
	if (laserY <= 330) {
		shot = true;
		canSee = false;
	}

	if (shot == true) {
		for (int i = 0; i < boom.length; i++) {
			boom[i].show();
			boom[i].move();
		}
	}
	else {
		strokeWeight(2);
		stroke(0);
		fill(150, 146, 135);
		ellipse(300,200,300,300);
		curve(200, 180, 160, 250, 450 , 230, 450, 180);
		fill(77, 76, 74);
		strokeWeight(1);
		ellipse(360,150,100,100);
		noStroke();
		fill(59, 58, 56);
		ellipse(360,150,30,30);
	}
}
void mousePressed()
{
	laserShot = true;
}
class Particle
{
	double myX,myY,mySpeed,myAngle;
	int myColor,mySize;
	Particle() 
	{
		myColor = color((int)(Math.random()*255)+200,(int)(Math.random()*180),(int)(Math.random()*80)); 
		myAngle = Math.random()*(2*Math.PI);
		mySpeed = Math.random()*
		5;
		myX = 300;
		myY = 200;
		mySize = (int)(Math.random()*20)+1;
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

class OddballParticle extends Particle
{
	OddballParticle()
	{
		myColor = color(150, 146, 135,150);
		mySpeed = Math.random()*2;
	}
	void show() 
	{
		fill(myColor);
		arc((float)myX, (float)myY,50,50,0,5*PI/6);

	}
}


