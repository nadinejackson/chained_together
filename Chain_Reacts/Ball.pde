//Team chained_together - T. Fabiha, Nadie Jackson, Raunak Chowdhury
//APCS2 pd2
//HW #53: All That Bouncin’ . . . Break!
//2018-05-24 r

class Ball
{
  color myColor;
  float xcor;
  float ycor;
  float xspeed;
  float yspeed;
  int size;
  int  boundary = 15;

  Ball(color c, float x, float y, float xs, float ys, int s)
  {
    myColor = c;
    xcor = x;
    ycor = y;
    xspeed = xs;
    yspeed = ys;
    size = s;
  }

  void move()
  {
    xcor += xspeed;
    ycor += yspeed;

    wallInteraction();
  }

  void wallInteraction()
  {
    if (ycor < boundary || ycor > height - boundary) //upper wall & lower wall boundaries
      yspeed = -yspeed;
    if (xcor < boundary || xcor > width - boundary) // left wall & right wall boundaries
      xspeed = -xspeed;
  }

  void position()
  {
    fill(myColor);
    ellipse(xcor, ycor, size, size);
  }
}
