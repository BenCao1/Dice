void setup()
{
	noLoop();
  size(525, 500);
}
void draw()
{
	background(0);
  int sumOfDots = 0;
  //Die bob;
 // bob = new Die(50, 50);
 // bob.roll();
  //bob.show();
  for (int y = 50; y <= 250; y+= 50) {
    for (int x = 50; x <= 300; x+= 50) {
      Die test;
      test = new Die(x, y);
      sumOfDots += (test.roll());
      test.show();
    }
  } 
  textSize(20);
  fill(255, 255, 255);
  text("The sum of dice is " + sumOfDots, 100, 450);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY, numOfDots;
	
	Die(int x, int y) //constructor
	{
		myX = x;
    myY = y;
	}
	public int roll()
	{
		numOfDots = (int)(Math.random() * 6) + 1;
    return numOfDots;
 
     
	}
	void show()
	{
		//fill(255, 255, 255);
    //rect(myX, myY, 50, 50);
    fill(255, 0, 0);
    if (numOfDots == 1) {
      fill(255, 255, 255);
      rect(myX + (myX / 2) - 25, myY + (myY / 2) - 25, 50, 50);
      fill(255,0,0);
      ellipse(myX + (myX / 2), myY + (myY / 2), 10, 10);
      
      
    } else if (numOfDots == 2) {
          fill(255, 255, 255);
          rect(myX + (myX / 2) - 25, myY + (myY / 2) - 25, 50, 50);
          fill(255,0,0);
          ellipse(myX + (myX / 2) - 10, myY + (myY / 2), 10, 10);
          ellipse(myX + (myX / 2) + 10, myY + (myY / 2), 10, 10);
    } else if (numOfDots == 3) {
          fill(255, 255, 255);
          rect(myX + (myX / 2) - 25, myY + (myY / 2) - 25, 50, 50);
          fill(255,0,0);
          ellipse(myX + (myX / 2) - 15, myY + (myY / 2), 10, 10);
          ellipse(myX + (myX / 2) , myY + (myY / 2), 10, 10);      
          ellipse(myX + (myX / 2) + 15, myY + (myY / 2), 10, 10); 
    } else if (numOfDots == 4) {
          fill(255, 255, 255);
          rect(myX + (myX / 2) - 25, myY + (myY / 2) - 25, 50, 50);
          fill(255,0,0);
          ellipse(myX + (myX / 2) - 15, myY + (myY / 2) -15 , 10, 10);   
          ellipse(myX + (myX / 2) + 15, myY + (myY / 2) - 15, 10, 10); 
          ellipse(myX + (myX / 2) - 15 , myY + (myY / 2) + 15, 10, 10);
          ellipse(myX + (myX / 2) + 15, myY + (myY / 2) + 15, 10, 10);      
    } else if (numOfDots == 5) {
          fill(255, 255, 255);
          rect(myX + (myX / 2) - 25, myY + (myY / 2) - 25, 50, 50);
          fill(255,0,0);
          ellipse(myX + (myX / 2) - 15, myY + (myY / 2) -15 , 10, 10);
          ellipse(myX + (myX / 2) , myY + (myY / 2), 10, 10);      
          ellipse(myX + (myX / 2) + 15, myY + (myY / 2) - 15, 10, 10); 
          ellipse(myX + (myX / 2) - 15 , myY + (myY / 2) + 15, 10, 10);
          ellipse(myX + (myX / 2) + 15, myY + (myY / 2) + 15, 10, 10);   
    } else if (numOfDots == 6) {
          fill(255, 255, 255);
          rect(myX + (myX / 2) - 25, myY + (myY / 2) - 25, 50, 50);
          fill(255,0,0);
          ellipse(myX + (myX / 2) - 15, myY + (myY / 2) + 15, 10, 10);
          ellipse(myX + (myX / 2) , myY + (myY / 2) +15, 10, 10);      
          ellipse(myX + (myX / 2) + 15, myY + (myY / 2) + 15, 10, 10); 
          ellipse(myX + (myX / 2) , myY + (myY / 2) - 15, 10, 10); 
          ellipse(myX + (myX / 2) - 15, myY + (myY / 2) - 15, 10, 10);  
          ellipse(myX + (myX / 2) + 15, myY + (myY / 2) - 15, 10, 10); 
    }  
          
}
}
