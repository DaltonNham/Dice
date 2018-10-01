void setup()
{
	noLoop();
	size(300,300);
}
void draw()
{
	int rollCount = 0;
	background(255);
	for (int y = 0; y <= 280; y += 20) {
		for(int x = 0; x <= 280; x += 20) {
			int colour1 = ((int)(Math.random()*101)+ 50);
			int colour2 = ((int)(Math.random()*101)+ 50);
			int colour3 = ((int)(Math.random()*101)+ 50);
			fill(colour1, colour2, colour3, 150);
			Die one = new Die(x,y);
			one.show();
			rollCount = one.rollNum + rollCount;
		}
	}
	fill(0);
	textSize(50);
	text("Sum: " + rollCount, 35, 150);

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
	}
	void roll()
	{
		rollNum = ((int)(Math.random()*6)+1);
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
			fill(150);
			ellipse(myX + 10, myY + 10, 5, 5);
		}
		else if (rollNum == 2) {
			fill(150);
			ellipse(myX+5, myY+15, 5, 5);
			ellipse(myX+15, myY+5, 5, 5);
		}
		else if(rollNum == 3) {
			fill(150);
			ellipse(myX+5, myY+15, 5, 5);
			ellipse(myX+10, myY+10, 5, 5);
			ellipse(myX+15, myY+5, 5, 5);
		}
		else if (rollNum == 4) {
			fill(150);
			ellipse(myX+5, myY+15, 5, 5);
			ellipse(myX+5, myY+5, 5, 5);
			ellipse(myX+15, myY+5, 5, 5);
			ellipse(myX+15, myY+15, 5, 5);
		}
		else if (rollNum == 5) {
			fill(150);
			ellipse(myX+5, myY+15, 5, 5);
			ellipse(myX+5, myY+5, 5, 5);
			ellipse(myX+15, myY+5, 5, 5);
			ellipse(myX+15, myY+15, 5, 5);
			ellipse(myX+10, myY+10, 5, 5);
		}
		else {
			fill(150);
			ellipse(myX+5, myY+15, 5, 5);
			ellipse(myX+5, myY+10, 5, 5);
			ellipse(myX+5, myY+5, 5, 5);
			ellipse(myX+15, myY+5, 5, 5);
			ellipse(myX+15, myY+10, 5, 5);
			ellipse(myX+15, myY+15, 5, 5);

		}
	}
}
