void setup()
{
	noLoop();
	size(300,300);
}
void draw()
{
	background(255);
	for (int y = 0; y <= 280; y += 20) {
		for(int x = 0; x <= 280; x += 20) {
			int colour1 = ((int)(Math.random()*155)+101);
			int colour2 = ((int)(Math.random()*155)+101);
			int colour3 = ((int)(Math.random()*155)+101);
			fill(colour1, colour2, colour3);
			Die one = new Die(x,y);
			one.show();
		}
	}
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY, rollNum, rollCount;
	
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		rollCount = 0;
	}
	void roll()
	{
		rollNum = ((int)(Math.random()*6)+1);
		//rollCount = rollCount + rollNum;
		//fill(0);
		//text("Sum: "+ rollCount, 150, 150);
	}
	void show()
	{
		roll();
		strokeWeight(1);
		int colour1 = ((int)(Math.random()*155)+101);
		int colour2 = ((int)(Math.random()*155)+101);
		int colour3 = ((int)(Math.random()*155)+101);
		fill(colour1, colour2, colour3);
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
		else {
			fill(0);
			ellipse(myX+5, myY+15, 5, 5);
			ellipse(myX+5, myY+10, 5, 5);
			ellipse(myX+5, myY+5, 5, 5);
			ellipse(myX+15, myY+5, 5, 5);
			ellipse(myX+15, myY+10, 5, 5);
			ellipse(myX+15, myY+15, 5, 5);

		}
	}
}
