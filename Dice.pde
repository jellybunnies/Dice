Die bob;
void setup()
{
  noLoop();
  size(465,550);
  background(0);
}
void draw()
{
 background((int)(Math.random()*26),(int)(Math.random()*26),(int)(Math.random()*26));

 int sum = 0;
 int sum1 = 0;
 int sum2 = 0;
 int sum3 = 0;
 int sum4 = 0;
 int sum5 = 0;
 int sum6 = 0;
 
 for(int y = 15; y < 450; y = y + 75)
  {
    for(int x = 15; x < 430; x = x + 75)
    { 
       bob = new Die(x, y);
       bob.roll();
       bob.show();
        
       if (bob.numRoll == 1){
       sum = sum + 1;
       sum1 = sum1 + 1;
       }
       else if (bob.numRoll == 2){
       sum = sum + 2;
       sum2 = sum2 + 1;
       }
       else if (bob.numRoll == 3){
       sum = sum + 3;
       sum3 = sum3 + 1;
       }
       else if (bob.numRoll == 4){
       sum = sum + 4;
       sum4 = sum4 + 1;
       }
       else if (bob.numRoll == 5){
       sum = sum + 5;
       sum5 = sum5 + 1;
       }
       else if (bob.numRoll == 6){
       sum = sum + 6;
       sum6 = sum6 + 1;
       }
    }
  }
  
  //sum of dice roll
  fill(255);
  textSize(12);
  text("Max Total: 216", 125, 520);
  text("Min Total: 36", 25, 520);
  text("Total # of 1s: " + sum1, 245, 480);
  text("Total # of 2s: " + sum2, 245, 500);
  text("Total # of 3s: " + sum3, 245, 520);
  text("Total # of 4s: " + sum4, 355, 480);
  text("Total # of 5s: " + sum5, 355, 500);
  text("Total # of 6s: " + sum5, 355, 520);
  textSize(30);
  text("Total: " + sum, 45, 490);
  
}
void mousePressed()
{
  redraw();
}
class Die
{
  //variable declarations here
  int mySize, myX, myY;
  int numRoll, dotSize, dotx, doty;
  
  Die(int x, int y) //constructor
  {
    //variable initializations here
    mySize = 60;
    myX = x;
    myY = y;
    
    
    dotSize = 10;
    dotx = x + 15;
    doty = y + 15;
  }
  void roll()
  {
    numRoll = (int)(Math.random()*6)+1;
  }
  void show()
  {
    fill(255);
    square(myX,myY,mySize);
    
    noStroke();
    fill((int)(Math.random()*56 + 150),(int)(Math.random()*56 + 150),(int)(Math.random()*56 + 150));
    
    //dice1
    if (numRoll == 1){
      ellipse(dotx+15,doty+15,10,10);
    }
    
    //dice2
    if (numRoll == 2){
      ellipse(dotx,doty,10,10);
      ellipse(dotx+30,doty+30,10,10);
    }
    
    //dice3
    if (numRoll == 3){
      ellipse(dotx+15,doty+15,10,10);
      ellipse(dotx,doty,10,10);
      ellipse(dotx+30,doty+30,10,10);
    }
    
    //dice4
    if (numRoll == 4){
      ellipse(dotx,doty,10,10);
      ellipse(dotx+30,doty+30,10,10);
      ellipse(dotx,doty+30,10,10);
      ellipse(dotx+30,doty,10,10);
    }
    
    //dice5
    if (numRoll == 5){
      ellipse(dotx,doty,10,10);
      ellipse(dotx+30,doty+30,10,10);
      ellipse(dotx,doty+30,10,10);
      ellipse(dotx+30,doty,10,10);
      ellipse(dotx+15,doty+15,10,10);
    }
    
    //dice6
    if (numRoll == 6){
      ellipse(dotx,doty,10,10);
      ellipse(dotx+30,doty+30,10,10);
      ellipse(dotx,doty+30,10,10);
      ellipse(dotx+30,doty,10,10);
      ellipse(dotx,doty+15,10,10);
      ellipse(dotx+30,doty+15,10,10);
    }
  }
}
