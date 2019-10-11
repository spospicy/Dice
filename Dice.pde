 int total = 0;
 void setup()
{
  size(475,475);
  noLoop();
}
void draw()
{
  background(127);
  for(int x = 25; x < 425; x+=75)
  {
    for(int y = 25; y < 425; y+=75)
    {
      Die hello = new Die(x,y);
      hello.show();
    }
  }
  textAlign(CENTER);
  text("Total: " + total, 475/2, 470);
  //your code here
}
void mousePressed()
{
  redraw();
  total = 0;
}
class Die //models one single dice cube
{
  int rolled, myX, myY;
  //variable declarations here
  
  Die(int x, int y) //constructor
  {
    roll();
    myX = x;
    myY = y;
    //variable initializations here
  }
  void roll()
  {
    //your code here
    rolled = (int)(Math.random() * 6) + 1;
  }
  void show()
  {
    noStroke();
    fill(255);
    rect(myX, myY, 50, 50);
    fill(0);
    int d = 10;
    float x1 = myX + 50/4;
    float x2 = myX + 100/4;
    float x3 = myX + 150/4;
    float y1 = myY + 50/4;
    float y2 = myY + 100/4;
    float y3 = myY + 150/4;
    System.out.println(rolled);
    if(rolled == 1)
    {
      ellipse(myX + 25, myY + 25, 10,10);
    }
    else if(rolled == 2)
    {
      ellipse(x3 , y1, d, d);
      ellipse(x1, y3, d, d);
    }
    else if(rolled == 3)
    {
      ellipse(x3,y1,d,d);
      ellipse(x2,y2,d,d);
      ellipse(x1,y3,d,d);
    }
    else if(rolled == 4)
    {
      ellipse(x1,y1,d,d);
      ellipse(x3,y1,d,d);
      ellipse(x1,y3,d,d);
      ellipse(x3,y3,d,d);
    }
    else if(rolled == 5)
    {
      ellipse(x1,y1,d,d);
      ellipse(x3,y1,d,d);
      ellipse(x1,y3,d,d);
      ellipse(x3,y3,d,d);
      ellipse(x2,y2,d,d);
    }
    else
    {
      ellipse(x1,y1,d,d);
      ellipse(x3,y1,d,d);
      ellipse(x1,y3,d,d);
      ellipse(x3,y3,d,d);
      ellipse(x1,y2,d,d);
      ellipse(x3,y2,d,d);
    }
    total = total + rolled;
    //your code here
  }
}