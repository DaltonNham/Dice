Die one;
void setup()
{
	noLoop();
}
void draw()
{
	background(255);
	fill(255);
	one = new Die(0,0);
	one.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY, rollNum;
	
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		//rollNum = ((int)(Math.random()*6)+1);
		rollNum = 5;
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		rect(myX,myY,20,20);
		if (rollNum == 1) {
			fill(0);
			ellipse(myX + 10, myY + 10, 5, 5);
		}
		else if (rollNum == 2) {
			fill(0);
			ellipse(myX+5, myY+15, 5, 5);
			ellipse(myX+15, myY+5, 5, 5);
		}
		else if(rollNum == 3) {
			fill(0);
			ellipse(myX+5, myY+15, 5, 5);
			ellipse(myX+10, myY+10, 5, 5);
			ellipse(myX+15, myY+5, 5, 5);
		}
		else if (rollNum == 4) {
			fill(0);
			ellipse(myX+5, myY+15, 5, 5);
			ellipse(myX+5, myY+5, 5, 5);
			ellipse(myX+15, myY+5, 5, 5);
			ellipse(myX+15, myY+15, 5, 5);
		}
		else if (rollNum == 5) {
			fill(0);
			ellipse(myX+5, myY+15, 5, 5);
			ellipse(myX+5, myY+5, 5, 5);
			ellipse(myX+15, myY+5, 5, 5);
			ellipse(myX+15, myY+15, 5, 5);
			ellipse(myX+10, myY+10, 5, 5);
		}
	}
}
