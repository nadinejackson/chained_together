//Team chained_together - T. Fabiha, Nadie Jackson, Raunak Chowdhury
//APCS2 pd2
//HW #53: All That Bouncin’ . . . Break!
//2018-05-24 r

Ball[] Balls;

void setup()
{
  size(600, 600);
  Balls = new Ball[25];

  for (int i = 0; i < Balls.length; i++)
  {
    color myColor = color(int(random(255)), int(random(255)), int(random(255)));
    float xcor = random(15, width - 15);
    float ycor = random(15, height - 15);
    float xspeed = random(-15, 15);
    float yspeed = random(-15, 15);
    int size = int(random(25, 50));
    
    Balls[i] = new Ball(myColor, xcor, ycor, xspeed, yspeed, size);
  }
}

void draw()
{
  background(000);

  for (Ball each : Balls)
  { 
    each.move();
    each.position();
  }
}
